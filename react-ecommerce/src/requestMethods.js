import axios from "axios";

const BASE_URL = "http://localhost:8000/";

const user = JSON.parse(localStorage.getItem("persist:root"))?.user;
const currentUser = user && JSON.parse(user).currentUser;
const TOKEN = currentUser?.token;



export const publicRequest = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Requseted-With': 'XMLHttpRequest',
    },
    withCredentials: true,
});

publicRequest.interceptors.request.use(function (config) {
    const user = JSON.parse(localStorage.getItem("persist:root"))?.user;
    const currentUser = user && JSON.parse(user).currentUser;
    const TOKEN = currentUser?.token;

    config.headers.Authorization = TOKEN ? `Bearer ${TOKEN}` : '';
    return config;
});

export const userRequest = axios.create({
    baseURL: BASE_URL,
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-Requseted-With': 'XMLHttpRequest',
    },
    header: { token: `Bearer ${TOKEN}` },
    withCredentials: true,
});

userRequest.interceptors.request.use(function (config) {
    const user = JSON.parse(localStorage.getItem("persist:root"))?.user;
    const currentUser = user && JSON.parse(user).currentUser;
    const TOKEN = currentUser?.token;

    config.headers.Authorization = TOKEN ? `Bearer ${TOKEN}` : '';
    return config;
});
