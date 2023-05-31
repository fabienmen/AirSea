import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["sail boats", "catamarans", "jet skis", "yachts", "speed boats", "fishing boats"],
      typeSpeed: 50,
      loop: true
    })
  }
}
