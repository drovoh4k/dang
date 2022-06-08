// --       Variables and Constants     --

var declaration = getComputedStyle(document.documentElement);
var defaultColor = declaration.getPropertyValue('--global-color');


// --       Selectors       --
// General
const header = document.querySelector('header');

// Tab-menu
const aulaTab = document.getElementById("aules-tab");
const buscarTab = document.getElementById("buscar-tab");
const tabMenuconst = document.querySelector('.tab-menu');
const tabContainer = document.querySelector('.tab-container');
const tab = document.querySelector('.tab');
const aulesBtn = document.getElementById("aules-tab-button");
const buscarBtn = document.getElementById("buscar-tab-button");


// --       Event Listeners       --
// Start
document.addEventListener('DOMContentLoaded', goAulesTab);

aulesBtn.addEventListener("click", goAulesTab);
buscarBtn.addEventListener("click", goBuscarTab);


// --       Functions       --
function goAulesTab() {
    // document.body.style.backgroundColor = "red";
    buscarTab.style.visibility = "hidden";
    aulaTab.style.visibility = "visible";
    // document.body.style.backgroundColor = "red";
}

function goBuscarTab() {
    buscarTab.style.visibility= "visible";
    aulaTab.style.visibility= "hidden";
    // aulaTab.style.backgroundColor = "red";
    // document.body.style.backgroundColor = "blue";
}