'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.use(function (req, res, done) {
    if (req.query.user === 'vamsee' && req.query.pwd === 'pwd')
        done();
    else
        res.send('u r not authonticated\n');
});
app.get('/', function (req, res) {
    res.send('Hello world\n');
});

app.listen(PORT, HOST);
console.log('Running on http://%s:%d', HOST, PORT);