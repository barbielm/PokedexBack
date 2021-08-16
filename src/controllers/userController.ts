import { Request, Response } from "express";
import signUpSchema from "../schemas/signUpSchema";

import userInterface from "../interfaces/userInterface";

import * as userService from "../services/userService";
import userSchema from "../schemas/userSchema";


export async function createUser(req: Request, res: Response){
  try{
    const {error} = signUpSchema.validate(req.body);
    if(!!error) return res.sendStatus(400);

    const newUser: userInterface = {email: req.body.email, password: req.body.password}
    
    const result = await userService.createUser(newUser);
    if(result) return res.sendStatus(201);
    else return res.sendStatus(409);

  } catch(e){
    console.log(e);
    res.sendStatus(500);
  }
}

export async function signIn(req: Request, res: Response){
  try {
    const {error} = userSchema.validate(req.body);
    if(!!error) return res.sendStatus(400);
    const user: userInterface = {email: req.body.email, password: req.body.password};

    const token = await userService.signIn(user)
    if(!token) return res.sendStatus(401);
    res.send({token});

  } catch(e){
    console.log(e)
    res.sendStatus(500)
  }

}