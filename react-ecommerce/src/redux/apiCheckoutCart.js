
// import { userRequest } from '../requestMethods';

import { publicRequest } from "../requestMethods";

// export const apiCheckOutCart = (data) => {
//     await userRequest.get('/sanctum/csrf-cookie');
//     return await userRequest.post(`/checkout/payment`, data);
// }

export const apiAddToCartServer = async (data) => {

    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.post(`/api/orders`, data);
}
