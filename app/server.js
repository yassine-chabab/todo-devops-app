const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

let tasks = [
  { id: 1, title: 'Installer Kubernetes', done: true },
  { id: 2, title: 'Configurer Jenkins', done: false }
];

app.get('/api/tasks', (req, res) => res.json(tasks));
app.post('/api/tasks', (req, res) => {
  const newTask = { id: tasks.length + 1, title: req.body.title, done: false };
  tasks.push(newTask);
  res.status(201).json(newTask);
});

app.get('/health', (req, res) => res.status(200).send('OK'));

app.listen(PORT, () => console.log(`App running on port ${PORT}`));
module.exports = app;