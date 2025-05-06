import * as fs from "node:fs/promises";
import * as path from "node:path";
import {z} from "zod";
import transitStops from "../../src/assets/metro_transilien_rer_stops.json";

const TransitStopNewSchema = z.object({
  id: z.string(),
  route_id: z.string(),
  route_long_name: z.string(),
  stop_name: z.string(),
  stop_lon: z.number(),
  stop_lat: z.number(),
  shortname: z.string(),
  nom_commune: z.string(),
  code_insee: z.string(),
  mode: z.string(),
});

(async () => {
  const allTransitStops = transitStops.map((ts) =>
    TransitStopNewSchema.parse(ts),
  );

  const insertStatements = allTransitStops
    .map((stop) => {
      return `INSERT INTO transit_stop (id,
                                        route_id,
                                        route_long_name,
                                        stop_name,
                                        stop_lon,
                                        stop_lat,
                                        shortname,
                                        nom_commune,
                                        code_insee,
                                        mode)
              VALUES ('${stop.id}',
                      '${stop.route_id}',
                      '${stop.route_long_name.replace(/'/g, "''")}',
                      '${stop.stop_name.replace(/'/g, "''")}',
                      ${stop.stop_lon},
                      ${stop.stop_lat},
                      '${stop.shortname}',
                      '${stop.nom_commune.replace(/'/g, "''")}',
                      '${stop.code_insee}',
                      '${stop.mode}');  `;
    })
    .join("\n");

  const upSqlPath = path.join(
    process.cwd(),
    "../../migrations/2025-02-05-224937_first_table/up.sql",
  );

  try {
    const currentContent = await fs.readFile(upSqlPath, "utf-8");
    const newContent = `${currentContent}\n-- Insert transit stops\n${insertStatements}`;

    await fs.writeFile(upSqlPath, newContent, "utf-8");

    console.log(
      `Successfully appended ${allTransitStops.length} insert statements to up.sql`,
    );
  } catch (error) {
    console.error("Error updating up.sql file:", error);
  }
})();
