require('dotenv').config();
const express = require('express')
const app = express()

app.get('/', (req, res) => {
    const STUDENT_NAME = process.env.STUDENT_NAME
    res.send(`Hello World, my name is ${STUDENT_NAME}`)
})

module.exports = app;