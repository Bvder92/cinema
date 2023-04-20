function showButton(a){
    console.log(a);
    return "<button onclick='reserver_seance.php'>Réserver séance " + a + "</button>";
}

function myevent(a){
    console.log("added innerHTML with id " + (a+1));
    result.innerHTML = showButton(a+1);
}

const divs = Array();
const id1 = document.querySelector("#div1");
const result = document.querySelector("#result");


id1.addEventListener('click', e => {
    console.log("oui");
    result.innerHTML = showButton(id1);
});

let x;
for(i = 1; i<6; i++){
    divs.push(document.querySelector("#div" + i));
}

let xx = document.querySelector("#div4");

/*
divs[3].addEventListener("click", e => {
    console.log("addedinnerhtml with id " + 4);
    result.innerHTML = showButton(4);
});
*/

for(i = 0; i<5; i++){
    divs[i].addEventListener("click", function() {
        myevent(i);
    });
}


