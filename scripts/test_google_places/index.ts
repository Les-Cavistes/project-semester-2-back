import axios from "axios";
import { config } from "dotenv";

// Load environment variables from .env file
config();

// Main class for Google Places API interactions
class GooglePlacesAPI {
    private apiKey: string;
    private baseUrl = "https://maps.googleapis.com/maps/api/place";

    constructor(apiKey: string) {
        this.apiKey = apiKey;
    }

    /**
     * Get place autocomplete suggestions
     * @param input The search text
     * @param options Additional options for the request
     * @returns Promise with autocomplete results
     */
    async getAutocomplete(
        input: string,
        options?: {
            language?: string;
            country?: string;
            location?: { lat: number; lng: number };
            radius?: number;
            types?: string;
            components?: string[];
        },
    ) {
        // Build the URL with query parameters
        const params = new URLSearchParams();
        params.append("input", input);
        params.append("key", this.apiKey);

        // Add optional parameters if provided
        if (options?.language) params.append("language", options.language);
        if (options?.country) {
            const components = options.components || [];

            if (components.length) {
                components.push(`country:${options.country}`);
            }
            options.components = components;
        }
        if (options?.components?.length)
            params.append("components", options.components.join("|"));
        if (options?.types) params.append("types", options.types);

        // Add location bias if provided
        if (options?.location) {
            params.append(
                "location",
                `${options.location.lat},${options.location.lng}`,
            );
            // Default radius to 5000m (5km) if not specified
            params.append("radius", (options.radius || 5000).toString());
        }

        const url = `${this.baseUrl}/autocomplete/json?${params.toString()}`;

        const response = await axios.get(url);
        return response.data;
    }
}

// Usage example for Google Places API
async function main() {
    const apiKey = process.env.GOOGLE_API_KEY;

    if (!apiKey) {
        console.error(
            "Error: Google API key not found. Please set it in your .env file.",
        );
        process.exit(1);
    }

    const placesAPI = new GooglePlacesAPI(apiKey);

    try {
        const autocompleteParis = await placesAPI.getAutocomplete("Aux rattr", {
            language: "fr",
            country: "fr",
            location: { lat: 48.8566, lng: 2.3522 },
        });
        console.log("Autocomplete results with location bias for Paris:");
        console.log(autocompleteParis);
    } catch (error) {
        console.error("An error occurred:", error);
    }
}

// Run the example
main().catch(console.error);
