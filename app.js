const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => res.send(`<h1>Udacity Nano degree capstone, ${new Date().toLocaleString()}</h1>`));

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`));
