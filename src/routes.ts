import { buildRouteHandler } from "./server";

export const routes = [
  {
    method: "GET",
    path: "/",
    handler: buildRouteHandler(() => "API is online"),
  },
  {
    method: "*",
    path: "/{p*}",
    handler: buildRouteHandler(() => "404 - Not found"),
  },
  {
    method: "GET",
    path: "/temp",
    handler: buildRouteHandler(() => ({ city: "Lisbon", temperature: 16 })),
  },
];
