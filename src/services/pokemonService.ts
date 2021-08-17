import { getRepository } from "typeorm";
import Pokemon from "../entities/Pokemon";
import axios from "axios";

export async function populateDatabase(){
    const pokemons = await getRepository(Pokemon).find();
    if(pokemons.length > 0) return
    for(let i = 1; i <= 100; i++){
        const pokemonApi = await axios.get(`https://pokeapi.co/api/v2/pokemon/${i}`)
        const pokemon = pokemonApi.data
        const newPokemon = new Pokemon();
        newPokemon.name = pokemon.name;
        newPokemon.image = pokemon.sprites.front_default;
        newPokemon.number = pokemon.order;
        newPokemon.baseExp = pokemon.base_experience;
        newPokemon.height = pokemon.height;
        newPokemon.weight = pokemon.weight;
        newPokemon.inMyPokemons = false;
        let abilities: string = "";
        for(let j = 0; j < pokemon.abilities.length; j++){
            abilities += pokemon.abilities[j].ability.name;
            if(j !== pokemon.abilities.length - 1) abilities += ", ";
        }
        newPokemon.description = abilities;
        console.log(pokemon);
        await getRepository(Pokemon).save(newPokemon);
    }
}

export async function getPokemons(){
    const pokemons = await getRepository(Pokemon).find();
    return pokemons;
}

export async function addMyPokemon(id: number){
    const pokemon = await getRepository(Pokemon).findOne({id});
    if(!pokemon) return false;

    await getRepository(Pokemon).update({id},{inMyPokemons: true});
    return true;
}

export async function removeMyPokemon(id: number){
    const pokemon = await getRepository(Pokemon).findOne({id});
    if(!pokemon) return false;

    await getRepository(Pokemon).update({id},{inMyPokemons: false});
    return true;
}