import {
  Request,
  ResponseToolkit,
  server,
  ServerOptions,
  ServerRoute,
} from "@hapi/hapi";

type Callback = (args: any) => any | Promise<any>;

export const startServer = async (
  options: ServerOptions,
  routes: ServerRoute[]
) => {
  try {
    options.routes = {
      cors: {
        origin: ["*"],
        headers: ["Accept", "Content-Type"],
        additionalHeaders: ["X-Requested-With"],
      },
    };

    const client = server(options);

    client.route(routes);
    await client.start();

    console.log("Server running on %s", client.info.uri);
  } catch (error) {
    console.error(error, "startServer");
    throw error;
  }
};

export const buildRouteHandler = (cb: Callback) => {
  return async (request: Request, h: ResponseToolkit) => {
    try {
      return h.response(
        await cb({
          ...request.query,
          ...request.params,
          ...(request.payload as Object),
        })
      );
    } catch (error) {
      console.error(error, cb.name);
    }
  };
};

export const addPrefix = (routes: ServerRoute[], prefix: string) =>
  routes.map((route) => ({
    ...route,
    path: `/${prefix}${route.path}`,
  })) as ServerRoute[];
