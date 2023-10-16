import { variables } from "../env";
import { routes } from "./routes";
import { startServer } from "./server";

const init = async () => {
  try {
    const { host, port } = variables;

    await startServer({ host, port }, routes);
  } catch (error) {
    console.error(error, "home-manager");
  }
};

init();
