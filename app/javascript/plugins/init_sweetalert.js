import Swal from 'sweetalert2'
import Rails from "@rails/ujs"

const alertBtnAccepted = () => {
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
        if (result.isDismissed) {
          form.submit()
        }
      })
    })
  })
}

const alertBtnDeclined = () => {
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
}

const alertBtnEdit = () => {
  const editEvent = document.querySelector(".btn-edit-form")
  const form = document.querySelector(".edit_event")
  if (editEvent) {
    editEvent.addEventListener('click', (e) => {
      e.preventDefault();
      Swal.fire({
        icon: 'warning',
        title: 'Voulez-vous confirmer vos modifications?',
        showCancelButton: true,
        confirmButtonText: 'Valider mes modifications'
      })
    })
  }
}

const alertBtnCancel = () => {
  const cancelEvents = document.querySelectorAll('.fa-window-close')
  const cancelEventBtn = document.querySelector('.cancel_event')
  console.log(cancelEvents)
  cancelEvents.forEach((cancelEvent) => {
    cancelEvent.addEventListener('click', (e) => {
      e.preventDefault();
      Swal.fire({
          icon: 'warning',
          title: 'Voulez-vous confirmer vos modifications?',
          showCancelButton: true,
          confirmButtonText: 'Valider mes modifications'
      }).then((result) => {
        console.log(result)
      })
    })
  })
}

export const initSweetAlert = () => {
  alertBtnDeclined();
  alertBtnAccepted();
  alertBtnEdit();
  alertBtnCancel();
}
