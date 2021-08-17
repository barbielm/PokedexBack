import "./setup";

import express from "express";
import cors from "cors";
import "reflect-metadata";

import connectDatabase from "./database";

import * as userController from "./controllers/userController";
import * as pokemonController from "./controllers/pokemonController";

import * as tokenMiddleware from "./middlewares/tokenMiddleware";

const app = express();
app.use(cors());
app.use(express.json());

app.post("/sign-up", userController.createUser);

app.post("/sign-in", userController.signIn);

app.get("/pokemons", tokenMiddleware.verifyToken ,pokemonController.getPokemons);

app.post("/my-pokemons/:id/add", tokenMiddleware.verifyToken, pokemonController.addMyPokemon);
app.post("/my-pokemons/:id/remove", tokenMiddleware.verifyToken, pokemonController.removeMyPokemon);

export async function init () {
  await connectDatabase();
}

export default app;
