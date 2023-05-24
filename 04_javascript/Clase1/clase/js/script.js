
function calcularTotal() {
    const valorTicket=1000
    // const descEstudiante=50
    // const descProf=30
    // const descInvest=10

    console.log("ingresó al calculartotal")

    // console.log(document)
    // console.log(document.body)
    console.log(document.getElementById("cantEnt").value)
    let cantEnt=document.getElementById("cantEnt").value

    let porcDesc=document.getElementById("porcDesc").value
    
    // total sin descuento
    let totalSDesc=cantEnt*valorTicket 
    
    // descuento
    let desc=(totalSDesc*porcDesc)/100

    // totcal con descuento
    let totalCDesc=totalSDesc-desc

    console.log(totalCDesc)

    document.getElementById("total").innerHTML=`Total a pagar: $${totalCDesc} `
}