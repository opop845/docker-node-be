const { runServer } = require('verdaccio');

async function startServer() {
  //const app = await runServer();
  const app = await runServer('./config/config.yaml');
  app.listen(4873, (event) => {
    // do something
  });
}

startServer();
