// función tradicional
function validarUser() {
    // console.log(document.body)
    console.log(document.getElementById("user").value)
    document.querySelector("#user").value

    let user=document.getElementById("user").value
    if (!user.includes("@")) {
        document.getElementById("msjUser").innerHTML="El usuario debe contener un @"
        document.getElementById("msjUser").className="text-danger small fw-bold"
    } else if(!user.includes("esba.edu.ar")) {
        document.getElementById("msjUser").innerHTML="El usuario debe contener el dominio esba.edu.ar"
        document.getElementById("msjUser").className="text-danger small fw-bold"
        
    } else {
        document.getElementById("msjUser").innerHTML=""
        document.getElementById("msjUser").className=""
        
    }
}

// función flecha
let validarUserFlecha = () => {
    let user=document.getElementById("user").value
    if (!user.includes("@")) {
        document.getElementById("msjUser").innerHTML="El usuario debe contener un @"
        document.getElementById("msjUser").className="text-danger small fw-bold"
    } else if(!user.includes("esba.edu.ar")) {
        document.getElementById("msjUser").innerHTML="El usuario debe contener el dominio esba.edu.ar"
        document.getElementById("msjUser").className="text-danger small fw-bold"
        
    } else {
        document.getElementById("msjUser").innerHTML=""
        document.getElementById("msjUser").className=""
        
    }
}

// todo: definir la fortaleza de la pass
function fortPass() {
    let pass=document.getElementById("pass").value

    //regexp que valida una minúscula, mayúscula y mayor a 8 caracteres
    let regExpPass=new RegExp("(?=.*[a-z])(?=.*[A-Z]).{8,}")
  
    if (regExpPass.test(pass)) {
        document.getElementById("msjPass").innerHTML=""
        document.getElementById("msjPass").className=""        
    } else {
        document.getElementById("msjPass").innerHTML="Debe contener al menos una minúscula, una mayúscula y ser mayor a 8 caractéres"
        document.getElementById("msjPass").className="text-danger small fw-bold"          
    }
}

// todo: comprobar que las pass coincidan