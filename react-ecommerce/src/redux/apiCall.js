import axios from 'axios';
import React from 'react';
import { userRequest } from '../requestMethods';
import { resetProductInCart } from './cartRedux';
import { loginFailure, loginStart, loginSuccess, logoutSuccess } from "./userRedux";

export const login = async (dispatch, user) => {
    dispatch(loginStart())
    try {
        await userRequest.get('/sanctum/csrf-cookie');
        let res = await userRequest.post('/api/login', user);
        dispatch(loginSuccess(res.data));
        return res;
    } catch (error) {
        dispatch(loginFailure())
    }
}

export const logout = async (dispatch, user) => {
    try {
        await userRequest.get('/sanctum/csrf-cookie');
        let res = await userRequest.post('/api/logout', user);
        dispatch(logoutSuccess(res.data))
        dispatch(resetProductInCart(res.data))
        return res;
    } catch (error) {

    }

}


export const register = async (user) => {
    await userRequest.get('/sanctum/csrf-cookie')
    let res = await userRequest.post('/api/register', user);
    return res;
}
export const user = async () => {
    await userRequest.get('/sanctum/csrf-cookie');
    return await userRequest.get('/api/user', user);
}

export const AddCartServer = async () => {
    await userRequest.get('/sanctum/csrf-cookie');
    return await userRequest.get('/api/orders', user);
}