//  Text file data 
let textcard = document.querySelector("#text-card");
let textButton = document.querySelector("#text-btn");
textButton.addEventListener('click', function () {
    // create ajax request

    let xhr = new XMLHttpRequest();
    xhr.open('GET', "./data/message.txt", true);
    // process the request 

    xhr.send();

    xhr.onload = () => {
        if (xhr.status === 200) {
            let data = xhr.responseText;
            console.log(data);
            textDisplay(data);


        }
    }
});


let textDisplay = (data) => {
    let htmlTemplate = `<h3>${data}</h3>`
    textcard.innerHTML = htmlTemplate;
}


// Json data 


let jsonbtn = document.querySelector("#json-btn");
let jsoncard = document.querySelector("#json-card");
jsonbtn.addEventListener('click', () => {
    let xhr = new XMLHttpRequest();

    xhr.open("GET", "./data/mobiles.json", true);

    xhr.send();
    xhr.onload = () => {
        if (xhr.status === 200) {
            let data = xhr.responseText;
            let mobile = JSON.parse(data);
            displayJson(mobile);
        }
    }
})


let displayJson = (mobile) => {
    let htmlTemplate = "";
    htmlTemplate = `<ul class="list-group">
        <li class="list-group-item">ID : ${mobile.id} </li>
        <li class="list-group-item">BRAND : ${mobile.brand} </li>
        <li class="list-group-item">COLOR : ${mobile.color} </li>
        <li class="list-group-item">PRICE : ${mobile.price} </li>
    </ul>`
jsoncard.innerHTML = htmlTemplate;

}


// Api data 



let apibtn = document.querySelector("#api-btn");
let apicard = document.querySelector("#api-card");

apibtn.addEventListener('click' , () => {
    let xhr = new XMLHttpRequest();

    xhr.open("GET", "https://jsonplaceholder.typicode.com/users", true);
    xhr.send();

    xhr.onload= () => {
        if(xhr.status === 200){
            let user  = xhr.responseText;
            let userdata  =  JSON.parse(user);
            console.log(userdata)
            displayApidata(userdata);
        }
    }
})

let displayApidata = (userdata) => {
    let htmlTemplate = "";
    for(user of userdata){
        htmlTemplate += `<ul class="list-group mb-3">
        <li class="list-group-item">ID : ${user.id} </li>
        <li class="list-group-item">Name : ${user.name} </li>
         <li class="list-group-item">username : ${user.username} </li>
         <li class="list-group-item">email : ${user.email} </li>
    </ul>`
    }
   
    apicard.innerHTML = htmlTemplate;
}