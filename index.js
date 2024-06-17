const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', ({res}) =>   res.send('Hello, World!'));

app.get('/api', ({res}) =>  res.json({ message: 'Hello from the API :)' }));

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
