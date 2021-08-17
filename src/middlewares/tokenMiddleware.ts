import { getRepository } from "typeorm";
import {Request, Response, NextFunction} from "express";
import Session from "../entities/Session";

export async function verifyToken(req: Request, res: Response, next: NextFunction){
    const authorization = req.headers["authorization"];
    if(!authorization) return res.sendStatus(401);
    const token = authorization.split("Bearer ")[1];
    const session = getRepository(Session).findOne({token});
    
    if(!session) return res.sendStatus(401);

    next();
}