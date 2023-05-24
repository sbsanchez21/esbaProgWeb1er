let a
a=4
// alert(a)

var b 
let c 
let d
c=3
console.log(c)
c="pedro"
console.log(c)


var resultado = a + b;
console.log(resultado);

resultado = a - b;
console.log(resultado);

// Concatenar
let nombre="Juan"
let apellido = "Perez"
resultado = nombre + " Suarez";
console.log(resultado);

resultado = `Nombre: ${nombre}, Apellido: ${apellido}`
console.log(resultado);

// Operadores de comparación
resultado = (a == b);
console.log( `a == b: ${resultado}`);

resultado = (a != b);
console.log( `a != b: ${resultado}`);

resultado = (a > b);
console.log( `a > b: ${resultado}`);

resultado = (a < b);
console.log( `a < b: ${resultado}`);

resultado = (a >= b);
console.log( `a >= b: ${resultado}`);

resultado = (a >= d);
console.log( `a >= d: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a <= c);
console.log( `a <= c: ${resultado}`);



// Operadores lógicos
resultado = (a > b) && (b > c);
console.log( `(a > b) && (b > c): ${resultado}`);

resultado = (a > b) && (c > b);
console.log( `(a > b) && (c > b): ${resultado}`);

resultado = (a > b) || (b > c);
console.log( `(a > b) ||  (b > c): ${resultado}`);

resultado = (b > a) || (b > c);
console.log( `(b > a) ||  (b > c): ${resultado}`);

resultado = !((b > a) || (b > c));
console.log( `!((b > a) || (b > c)): ${resultado}`);

// Condicionales
var edadMayor = 18;
var edad = 19;

/**
if (edad < edadMayor) {
    console.log("La persona no puede ingresar al local");
}*/

if (edad < edadMayor) {
   console.log("La persona no puede ingresar");
} else {
    console.log("La persona puede ingresar");
} 

// var, let, const
if (true) {
    var x = 10;
    let y = 20;

}
console.log(x);
// console.log(y);

const z = 30;
console.log(z);
// z = 40;


var nroMes = 1;
switch (nroMes) {
    case 1:
        console.log("Enero");
        break;
    
    case 2:
        console.log("Febrero");
        break;
      
    case 3:
        console.log("Marzo");
        break;

    default:
        console.log("No se encontró el mes");
        break;
}

for (let i = 0; i < 4; i++) {
    console.log( `Valor de i: ${i}`);
}



let n = 0;
while (n < 3) {
    //n = n + 1;
    n++;
    console.log("n: " + n)
} 

let i = 0;
do {
    i += 1;
    console.log(i);
} while (i < 3);
