const path = require('path')

module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATA_FILE: path.join(__dirname, '../data/data.json'),
}
