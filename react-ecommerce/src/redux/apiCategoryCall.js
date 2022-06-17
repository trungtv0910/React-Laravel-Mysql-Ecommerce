import { publicRequest } from "../requestMethods";

export const getCategoriesServer = async () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get(`/api/allCategories`);
}
