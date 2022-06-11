import React from 'react'
import { publicRequest } from '../requestMethods';

export const getProductsServer = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get('/api/products');
}
