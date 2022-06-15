import { publicRequest, userRequest } from "../requestMethods";

export const addProductToCartServer = async (data) => {

    // await userRequest.get('/sanctum/csrf-cookie');
    return await userRequest.post('/api/addtocart/', data);
}
