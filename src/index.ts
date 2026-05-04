import express, { Request, Response } from 'express';
import morgan from 'morgan';
import 'dotenv/config';
import { drizzle } from 'drizzle-orm/node-postgres';
import { usersTable } from './db/schema';


const app = express();