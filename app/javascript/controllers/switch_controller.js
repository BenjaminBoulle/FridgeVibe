import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="switch"
export default class extends Controller {
  static targets = ["the_switch", "home_fridge", "away_fridge"];

  connect() {
    console.log("The 'switch' controller is now loaded!");
    console.log("Nice!!!!");
  }

  switch_content(event) {
    console.log("heyhey")
    if (this.the_switchTarget.checked) {
      this.home_fridgeTarget.classList.remove("d-none")
      this.home_fridgeTarget.classList.add("d-block")
      this.away_fridgeTarget.classList.remove("d-block")
      this.away_fridgeTarget.classList.add("d-none")
    } else {
      this.home_fridgeTarget.classList.remove("d-block")
      this.home_fridgeTarget.classList.add("d-none")
      this.away_fridgeTarget.classList.remove("d-none")
      this.away_fridgeTarget.classList.add("d-block")
    }
  }


}
