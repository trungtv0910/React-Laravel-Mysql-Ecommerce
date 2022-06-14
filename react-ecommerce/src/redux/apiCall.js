import axios from 'axios';
import React from 'react';
import { publicRequest } from '../requestMethods';
import { resetProductInCart } from './cartRedux';
import { loginFailure, loginStart, loginSuccess, logoutSuccess } from "./userRedux";

export const login = async (dispatch, user) => {
    dispatch(loginStart())
    try {
        await publicRequest.get('/sanctum/csrf-cookie');
        let res = await publicRequest.post('/api/login', user);
        dispatch(loginSuccess(res.data));
        return res;
    } catch (error) {
        dispatch(loginFailure())
    }
}

export const logout = async (dispatch, user) => {
    try {
        await publicRequest.get('/sanctum/csrf-cookie');
        let res = await publicRequest.post('/api/logout');
        dispatch(logoutSuccess(res.data))
        dispatch(resetProductInCart(res.data))
        return res;
    } catch (error) {

    }

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

export const AddCartServer = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get('/api/orders', user);
}