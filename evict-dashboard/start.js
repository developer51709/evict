// This is the entry point for the dashboard
const express = require('express');
const app = express();
const port = process.env.DASHBOARD_PORT || 3000
const path = require('path');
const fs = require('fs');
const { exec } = require('child_process');


console.log('Starting dashboard on port ' + port + '...');
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
  res.send('Dashboard is running');
});

app.listen(port, '0.0.0.0', () => {
  console.log('Dashboard listening on port ' + port);
});