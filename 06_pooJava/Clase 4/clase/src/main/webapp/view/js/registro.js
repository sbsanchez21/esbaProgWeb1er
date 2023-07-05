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
        document.getElementById("msjUser").innerHTML=""
        document.getElementById("msjUser").className=""        
    } else {
        document.getElementById("msjUser").innerHTML="Debe contener al menos una minúscula, una mayúscula y ser mayor a 8 caractéres"
        document.getElementById("msjUser").className="text-danger small fw-bold"          
    }
}

// todo: comprobar que las pass coincidan
function compararPass() {
	let pass=document.getElementById("pass").value
	let repPass=document.getElementById("repPass").value
	 
	if(pass!=repPass) {
        document.getElementById("msjUser").innerHTML="La password y su confirmación deben coincidir"
        document.getElementById("msjUser").className="text-danger small fw-bold"          
		
	} else {
        document.getElementById("msjUser").innerHTML=""
        document.getElementById("msjUser").className=""        

	}
}