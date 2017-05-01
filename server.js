const PORT = process.env.PORT || 3000;

const express = require('express');
const app = express();

app.use(express.static('./public'));

app.get('/', (req, res) => {
  return res.sendFile(__dirname + "/index.html");
});

app.get('*', (req, res) => {
  res.redirect('/');
})

app.listen(PORT, () => {
  console.log("DesignForce.io listening on PORT", PORT);
});
