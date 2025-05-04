import * as path from "path";
import * as fs from "fs/promises";
import refLines from "../../src/assets/referentiel-des-lignes.json";
import { z } from "zod";
import axios from "axios";

const PictoSchema = z.object({
  thumbnail: z.boolean(),
  filename: z.string(),
  width: z.number(),
  format: z.string(),
  mimetype: z.string(),
  id: z.string(),
  last_synchronized: z.string(),
  color_summary: z.array(z.unknown()),
  height: z.number(),
  url: z.string()
});

const LineSchema = z.object({
  id_line: z.string(),
  name_line: z.string(),
  shortname_line: z.string(),
  transportmode: z.string(),
  transportsubmode: z.string().nullable(),
  type: z.string().nullable(),
  operatorref: z.string(),
  operatorname: z.string(),
  additionaloperators: z.string().nullable(),
  networkname: z.string().nullable(),
  colourweb_hexa: z.string(),
  textcolourweb_hexa: z.string(),
  colourprint_cmjn: z.string(),
  textcolourprint_hexa: z.string(),
  accessibility: z.string(),
  audiblesigns_available: z.string(),
  visualsigns_available: z.string(),
  id_groupoflines: z.string().nullable(),
  shortname_groupoflines: z.string().nullable(),
  notice_title: z.string().nullable(),
  notice_text: z.string().nullable(),
  picto: PictoSchema.nullable(),
  valid_fromdate: z.string(),
  valid_todate: z.string().nullable(),
  status: z.string(),
  privatecode: z.string().nullable()
});


(async () => {
    const allLines = refLines.map((rl) =>
        LineSchema.parse(rl),
    );

    const linesWithPictoUrl = allLines.filter((line) => line.picto?.url);

    const assetsPath = path.join(
        process.cwd(),
        "../src/assets/pictos",
    );

    // if no `picto` folder exists, create it
    try {
        if (!(await fs.exists(assetsPath))) {
            await fs.mkdir(assetsPath);
        }

        await Promise.all(linesWithPictoUrl.map(async (line) => {
            const { id_line, picto } = line;
            const response = await axios.get(picto!.url, { responseType: 'arraybuffer' });
            const buffer = Buffer.from(response.data, 'binary');

            const filename = `${id_line}.png`;

            await fs.writeFile(path.join(assetsPath, filename), buffer);
        }));
    } catch (error) {
        console.error(error);
    } finally {
        console.log('Pictos downloaded successfully');
    }

})();

const a = [{
    id: 1,
    name: 'Aled'
}]

const test = a.any((line) => line.id === 1)
