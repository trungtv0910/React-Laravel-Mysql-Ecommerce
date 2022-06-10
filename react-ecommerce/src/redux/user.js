import { publicRequest } from "../requestMethods";


export const user = () => {
    await publicRequest.get('/sanctum/csrf-cookie');
    return await publicRequest.get('/api/user', user);
}
