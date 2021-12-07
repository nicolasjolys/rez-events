import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["formContainer"]

  static values = {
    currentIndex: Number
  }

  connect() {
    console.log(this.currentIndexValue)
    // console.log(this.formContainerTargets)
  }

  next() {
    // cacher la partie actuelle
    // console.log(this.currentFormContainer)
    this.currentFormContainer.classList.add("d-none")
    // incrémenter le currentIndex
    this.currentIndexValue +=1
    // console.log(this.currentIndexValue)
    // afficher la suivante
    this.currentFormContainer.classList.remove("d-none")
  }

  back() {
    this.currentFormContainer.classList.add("d-none")
    this.currentIndexValue -=1
    this.currentFormContainer.classList.remove("d-none")

  }

  get currentFormContainer() {
    return this.formContainerTargets[this.currentIndexValue]
  }


}
