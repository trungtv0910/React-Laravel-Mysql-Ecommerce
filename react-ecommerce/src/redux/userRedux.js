import { createSlice } from '@reduxjs/toolkit';


const userSlice = createSlice({
    name: "user",
    initialState: {
        currentUser: null,
        isFetching: false,
        error: false,
    },
    reducers: {
        loginStart: (state) => {
            state.isFetching = true;
        },
        loginSuccess: (state, action) => {
            state.isFetching = false;
            state.currentUser = action.payload;
            state.error = false;
        },
        loginFailure: (state) => {
            state.isFetching = false;
            state.error = true;
        },
        addToken: (state, action) => {
            state.token = localStorage.getItem('token')
        }
        , logoutSuccess: (state, action) => {
            state.token = null;
            localStorage.removeItem('persist:root');
            state.currentUser = null;
            state.isFetching = false;
            state.error = true;
            localStorage.clear();

        }
    }
})
export const { loginStart, loginSuccess, loginFailure, logoutSuccess } = userSlice.actions
export default userSlice.reducer;