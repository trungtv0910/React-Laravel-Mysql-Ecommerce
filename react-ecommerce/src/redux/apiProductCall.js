import React from 'react'
import { publicRequest } from '../requestMethods';

export const getProductsServer = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    let res = await publicRequest.get('/api/products');
    return res;
}

export const getProductServer = async (id) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/product/${id}`);
}

export const getProductByCategoryServer = async (id) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/productsListByCate/${id}`);
}
export const getProductSearchServer = async (key) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/products/search/${key}`);
}
// sản phẩm cùng 1 danh mục category dựa thêo id sản phẩm
export const getRelatedProductServer = async (id) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/relatedProduct/${id}`);
}
// lấy dan sách hình ảnh thumbnail của san phẩm đó
export const getImageOfProductServer = async (id) => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/listImageOfProduct/${id}`);
}