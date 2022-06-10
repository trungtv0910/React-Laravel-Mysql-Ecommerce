import axios from 'axios';
import React from 'react';
import { publicRequest } from '../requestMethods';


export const login = async (user) => {

    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.post('/api/login', user);

}

export const register = async (user) => {
    await publicRequest.get('/sanctum/csrf-cookie')
    let res = await publicRequest.post('/api/register', user);
    return res;
}
export const user = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get('/api/user', user);
}