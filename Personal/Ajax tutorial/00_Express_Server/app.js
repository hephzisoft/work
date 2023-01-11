const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');


// CONFIGURE 

app.use(bodyParser.json());
app