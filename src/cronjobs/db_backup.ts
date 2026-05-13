import { exec } from 'child_process';
import * as cron from 'node-cron';
import 'dotenv/config';
import { mkdirSync } from 'node:fs';
import path from  'path';

const dbBackup = () => {
    
    const fileName = `backup-${process.env.DB_NAME}-${new Date().toISOString().split('T')[0]}.sql`;
    const filePath = path.join(`${process.env.BACKUP_DIR}`, fileName);
    
    
   
  }
  
