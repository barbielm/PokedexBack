import { getRepository } from "typeorm";
import bcrypt from "bcrypt"
import {v4 as uuid} from "uuid";

import User from "../entities/User";
import userInterface from "../interfaces/userInterface";
import Session from "../entities/Session";


export async function createUser(newUser: userInterface){
  const checkEmail = await getRepository(User).find({email: newUser.email});
  if(checkEmail.length > 0) return false

  const user = new User()
  user.email = newUser.email
  user.password = bcrypt.hashSync(newUser.password, 10);
  await getRepository(User).save(user);
  return true;
}

export async function signIn(user: userInterface){
  const checkUser = await getRepository(User).find({email: user.email});
  if(checkUser.length === 0 || !bcrypt.compareSync(user.password, checkUser[0].password)) return false;

  const token = uuid();
  const session = new Session();
  session.token = token;
  session.user = checkUser[0];

  await getRepository(Session).save(session);
  return token;

}