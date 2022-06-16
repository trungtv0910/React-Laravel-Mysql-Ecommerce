import { createSlice, current } from '@reduxjs/toolkit';


const cartSlice = createSlice({
    name: "cart",
    initialState: {
        products: [],
        quantityProduct: 0,
        total: 0,
        isLoadingCart: false
    },
    reducers: {
        toggle: (state) => {
            state.isLoadingCart = !state.isLoadingCart;
        },
        // addProduct: (state, action) => {
        //     state.quantity += 1;

        //     state.total += action.payload.price * action.payload.quantity;
        //     state.products.push(action.payload);
        //     // state.map(item => {
        //     //     state.products.push(item)
        //     // })
        //     console.log('state', state);
        //     console.log('action', action);
        //     console.log('current', current(state));



        // } , 
        addProduct: (state, { payload }) => {

            // state.total += payload.price * payload.quantity;
            const { id, quantity, price } = payload;
            if (current(state).products.length <= 0) {
                state.products.push(payload);
                state.quantityProduct += 1;
                state.total += price * quantity;
            } else {
                let checkID = current(state).products.find((item) => item.id === id);
                if (checkID) {
                    console.log("sản phẩm đã tồn tại rồi");
                    current(state).products.map((item, index) => {
                        if (item.id === id) {
                            let UpdateItem = {
                                ...item,
                                quantity: item.quantity + quantity
                            }
                            state.products[index] = UpdateItem;
                            state.total += price * UpdateItem.quantity;
                        }
                    })
                } else {
                    state.products.push(payload);
                    state.quantityProduct += 1;
                    state.total += price * quantity;
                    console.log("vừa thêm 1 sản phẩm mới ");
                }

            }

        },
        resetProductInCart: (state, action) => {
            state.products = [];
            state.total = 0;
            state.quantityProduct = 0;
        },
        removeProductInCart: (state, action) => {
            console.log('state', current(state));
            console.log('action', action)
            const { id, price, quantity } = action.payload;

            console.log(current(state).products)
            current(state).products.map((item, index) => {
                if (item.id === id) {
                    state.quantityProduct -= 1;
                    state.total = state.total - (price * quantity);
                    return state.products.splice(index, 1);
                }
            });

        }
    }
})
export const { addProduct, resetProductInCart, toggle, removeProductInCart } = cartSlice.actions
export default cartSlice.reducer;