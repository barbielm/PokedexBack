import { Request, Response } from "express";
import * as pokemonService from "../services/pokemonService";

export async function getPokemons(req:Request, res:Response){
    const pokemons = await pokemonService.getPokemons();
    if(pokemons.length === 0){
        await pokemonService.populateDatabase();
        const newPokemons = await pokemonService.getPokemons();
        return res.send(newPokemons);
    }
    res.send(pokemons);
}