
var cart = {cutting_board : [0,15.00], standing_mat  : [0, 30.00], kitchen_sink : [0,45.00],
    utensil_set : [0,60.00], office_set :[0,2000.00], office_dvd :[0,20.00], notebook :[0,10.00],
    organizer :[0,5.00], bath_bombs :[0,40.00], epson_salt :[0,30.00], bath_pillow :[0,45.00],
    bath_towels :[0,20.00]
}

if (localStorage.getItem('shopping_cart') == null){
    localStorage.setItem('shopping_cart',JSON.stringify(cart))
}


function addItem(clicked_id) {
    let current_cart = JSON.parse(localStorage.getItem('shopping_cart'));
    current_cart[clicked_id][0] += 1;
    localStorage.setItem('shopping_cart',JSON.stringify(current_cart));
}


 

 