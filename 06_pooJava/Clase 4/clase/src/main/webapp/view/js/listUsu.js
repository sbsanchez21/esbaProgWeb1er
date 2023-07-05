//trae el elemento con id delModal
const delModal = document.getElementById('delModal')

//se fija si existe y lo puedo traer desde html
if (delModal) {

	//le agrega un evento a delModal, cada vez que se muestre ejecuta lo siguiente	
  delModal.addEventListener('show.bs.modal', event => {
    
    //trae el elemento que levanto el modal
    const a = event.relatedTarget
    
    //trae el atributo id del elemento a
    const id = a.getAttribute('id')
	const inputIdUser = delModal.querySelector('#idUser')
	inputIdUser.value=id

	const user=a.getAttribute('user')
    const dataUser = delModal.querySelector('.modal-body #dataUser')
    dataUser.innerHTML=user
  })
}