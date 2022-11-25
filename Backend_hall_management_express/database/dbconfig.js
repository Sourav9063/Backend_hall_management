const mysql = require('mysql2/promise');


async function query(sql, params) {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',

        database: 'hall_management_f'
    });
    const [results,] = await connection.execute(sql, params);

    return results;
}

module.exports = {
    query
}
