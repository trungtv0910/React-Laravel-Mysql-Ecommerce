import { createSlice } from '@reduxjs/toolkit';


const cartSlice = createSlice({
    name: "cart",
    initialState: {
        products: [],
        quantity: 0,
        total: 0,
    },
    reducers: {
        addProduct: (state, action) => {
            state.quantity += 1;
            state.products.push(action.payload);
            state.total += action.payload.price * action.payload.quantity;
        }, resetProductInCart: (state, action) => {
            state.products = [];
            state.total = 0;
            state.quantity = 0;
        },
    }
})
export const { addProduct, resetProductInCart } = cartSlice.actions
export default cartSlice.reducer;