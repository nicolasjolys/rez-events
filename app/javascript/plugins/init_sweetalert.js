import Swal from 'sweetalert2'
import Rails from "@rails/ujs"

export const initSweetAlert = () => {
  const declineForms = document.querySelectorAll('form.decline-btn');
  declineForms.forEach((form) => {
    const button = form.querySelector('.btn-decline')
    button.addEventListener('click', (e) => {
      e.preventDefault();
      Swal.fire({
        title: "Merci d'indiquer le motif du refus",
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off'
        },
        showCancelButton: true,
        confirmButtonText: 'Confirmer le refus',
        cancelButtonText: 'Annuler'

      }).then((result) => {
        if (result.isConfirmed) {
          const input = form.querySelector('.decline-btn input[name="declined_explanation"]')
          console.log(form)
          input.value = result.value
          form.submit()
          // Rails.ajax({
          //   url: form.action,
          //   type: form.firstElementChild.value
          // })
        }
      })
    })
  })
  const acceptEvent = document.querySelectorAll(".accept-btn")
  acceptEvent.forEach((form) => {
    const button = form.querySelector('.btn-accept')
    button.addEventListener('click', (e) => {
      e.preventDefault();
      Swal.fire({
        icon: 'success',
        title: 'Evénement validé!',
        showConfirmButton: false,
        timer: 1500
    }).then((result) => {
        console.log(result)
        if (result.isDismissed) {
          form.submit()
        }
      })
    })
  })
}
