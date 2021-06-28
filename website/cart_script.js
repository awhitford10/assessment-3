const main_list = document.getElementById('main_list')
var sum = 0


let final_cart = JSON.parse(localStorage.getItem('shopping_cart'))

for(const property in final_cart){
    if(final_cart[property][0] != 0){

        let list_item = document.createElement('li');
        let div1 = document.createElement('div');
        div1.style.float = 'left';
        div1.style.width = '25%';
        list_item.appendChild(div1)
        let p1 = document.createElement('p');
        div1.appendChild(p1)
        let text1 = document.createTextNode(`${property.replace('_', ' ')}`)
        p1.appendChild(text1)

        let div2 = document.createElement('div');
        div2.style.float = 'left';
        div2.style.width = '25%';
        list_item.appendChild(div2)
        let p2 = document.createElement('p');
        div2.appendChild(p2)
        let text2 = document.createTextNode(`${final_cart[property][0]}`)
        p2.appendChild(text2)

        let div3 = document.createElement('div');
        div3.style.float = 'left';
        div3.style.width = '25%';
        list_item.appendChild(div3)
        let p3 = document.createElement('p');
        div3.appendChild(p3)
        let text3 = document.createTextNode(`$${final_cart[property][1]}`)
        p3.appendChild(text3)

        let div4 = document.createElement('div');
        div4.style.float = 'left';
        div4.style.width = '25%';
        list_item.appendChild(div4)
        let p4 = document.createElement('p');
        div4.appendChild(p4)
        let text4 = document.createTextNode(`$${parseFloat(final_cart[property][1]) * parseFloat(final_cart[property][0])}`)
        p4.appendChild(text4)

        sum += parseFloat(final_cart[property][1]) * parseFloat(final_cart[property][0])

        main_list.appendChild(list_item)
        

        
    }
}

    let list_item5 = document.createElement('li');
    let div5 = document.createElement('div');
    div5.style.float = 'left';
    div5.style.width = '100%';
    list_item5.appendChild(div5)
    let p5 = document.createElement('p');
    div5.appendChild(p5);
    let text5 = document.createTextNode(`Total: $${sum}`);
    p5.appendChild(text5);
    main_list.appendChild(list_item5);
    





