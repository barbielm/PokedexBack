import { Request, Response } from "express";
import * as pokemonService from "../services/pokemonService";

export async function getPokemons(req:Request, res:Response){
    try{
        const pokemons = await pokemonService.getPokemons();
        if(pokemons.length === 0){
            await pokemonService.populateDatabase();
            const newPokemons = await pokemonService.getPokemons();
            return res.send(newPokemons);
        }
        res.send(pokemons);
    } catch(e){
        console.log(e)
        res.sendStatus(500);
    }
    
}

export async function addMyPokemon(req:Request, res:Response){
    try{
        const id = +req.params.id
        const result = await pokemonService.addMyPokemon(id)
        if(result) res.sendStatus(200)
        else res.sendStatus(400)
    } catch(e){
        console.log(e)
        res.sendStatus(500)
    }
}

export async function removeMyPokemon(req:Request, res:Response){
    try{
        const id = +req.params.id;
        const result = await pokemonService.removeMyPokemon(id)
        if(result) res.sendStatus(200)
        else res.sendStatus(400)

    } catch(e){
        console.log(e)
        res.sendStatus(500)
    }
}