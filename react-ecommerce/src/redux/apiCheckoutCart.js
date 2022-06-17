
// import { userRequest } from '../requestMethods';

import { publicRequest, userRequest } from "../requestMethods";
import { resetProductInCart } from './cartRedux';
// export const apiCheckOutCart = (data) => {
//     await userRequest.get('/sanctum/csrf-cookie');
//     return await userRequest.post(`/checkout/payment`, data);
// }

export const apiAddToCartServer = async (dispatch, data) => {

    await userRequest.get('/sanctum/csrf-cookie');
    let res = await userRequest.post(`/api/orders`, data);
    dispatch(resetProductInCart(res.data));
    return res;
}
