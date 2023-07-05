// json con datos alumnos
// {
//     id="1",
//     nombre="juan",
//     apellido="perez"
// },
// {
//     id="2",
//     nombre="lorena",
//     apellido="perez"
// }

let contador=1
function addAlumno() {
    contador++
    let tbody=document.getElementById("tbody")

    let tr=document.createElement("tr")
    tr.setAttribute("id",contador)

    let tdId=document.createElement("td")
    tdId.innerHTML=contador
    tr.appendChild(tdId)

    let tdNom=document.createElement("td")
    tdNom.innerHTML="Lorena"
    tr.appendChild(tdNom)

    let tdApe=document.createElement("td")
    tdApe.innerHTML="Juarez"
    tr.appendChild(tdApe)

    let tdOpe=document.createElement("td")
    tdOpe.innerHTML=`<i class='bi bi-trash3-fill' onclick="delAlumno('${contador}')"></i>`
    
    tr.appendChild(tdOpe)


    tbody.appendChild(tr)



}

function delAlumno(idTr) {
    let tbody=document.getElementById("tbody")

    let tr=document.getElementById(idTr)
    
    tbody.removeChild(tr)
}

// todo: hacer la edición de un alumno