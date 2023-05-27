import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

const connection = mysql
    .createConnection({
        host: process.env.MYSQL_HOST,
        user: process.env.MYSQL_USER,
        password: process.env.MYSQL_PASSWORD,
        database: process.env.MYSQL_DATABASE
    });


    connection.connect((err) => {
        if (err) {
          console.error('Error al conectar a la base de datos MySQL:', err);
          return;
        }
        console.log('Conexión a la base de datos MySQL establecida');
      });

      
