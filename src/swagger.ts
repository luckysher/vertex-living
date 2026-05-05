import swaggerJSDoc from 'swagger-jsdoc';
import swaggerUi from 'swagger-ui-express';
import path from 'path';

require('dotenv').config();

const swaggerDefinition = {
    definition: {
        openapi: "3.0.0",
        info: {
            title: "Vertex-living (NodeJs)",
            version: "1.0.0",
            description: "Vertex-living is a Realestate management project written in NodeJs (Express), Typescript, Drizzle-ORM, PostgreSQL",
        }
    }      
};

export const swaggerSpec = swaggerJSDoc(options);