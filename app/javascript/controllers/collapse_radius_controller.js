import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["greenSquare", "collapseLink"]

  next(event){
    if (this.greenSquareTarget.classList.contains("border-radius-collapse")) {
      this.greenSquareTarget.classList.remove("border-radius-collapse")
    } else {
      setTimeout(() => {
        this.greenSquareTarget.classList.add("border-radius-collapse")
      }, 400);
    }
  }
}
