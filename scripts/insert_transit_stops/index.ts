import axios from "axios";
import { z } from "zod";
import transitStops from "../../src/assets/metro_transilien_rer_stops.json";

const API_URL = "http://127.0.0.1:8000";

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

    let count = 0;
    for (const transitStop of allTransitStops) {
        // if (count >= 1) {
        //     break;
        // }

        try {
            await axios.post(`${API_URL}/transit_stop`, transitStop);
            console.log(
                `Transit stop ${transitStop.id} inserted - ${count + 1}`,
            );

            await new Promise((resolve) => setTimeout(resolve, 10));
        } catch (error) {
            console.error(`Error inserting transit stop ${transitStop.id}`);
            console.error(error);
        } finally {
            count++;
        }
    }
})();
