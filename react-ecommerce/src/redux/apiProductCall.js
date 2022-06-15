import React from 'react'
import { publicRequest } from '../requestMethods';

export const getProductsServer = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    let res = await publicRequest.get('/api/products');

    console.log('resProduct=', res);
    return res;
}

export const getProductServer = async (id) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/product/${id}`);
}
