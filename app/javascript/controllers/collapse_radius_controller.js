import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["greenSquare", "collapseLink"]

  next(event){
    this.greenSquareTarget.classList.toggle("border-radius-collapse")
    console.log(this.greenSquareTarget)
  }
}
