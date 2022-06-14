import axios from "axios";

const BASE_URL = "http://localhost:8000/";

// const user = JSON.parse(localStorage.getItem("persist:root"))?.user;
// const currentUser = user && JSON.parse(user).currentUser;
// const TOKEN = currentUser?.accessToken;



export const publicRequest = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Requseted-With': 'XMLHttpRequest',
    },
    withCredentials: true,
});



export const userRequest = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Requseted-With': 'XMLHttpRequest',
    },
    withCredentials: true,
});
