import { routes } from "./routes";
import { startServer } from "./server";

const init = async () => {
  try {
    const { HOST, PORT } = process.env;

    await startServer({ host: HOST, port: PORT }, routes);
  } catch (error) {
    console.error(error, "home-manager");
  }
};

init();
