import { Controller } from "@hotwired/stimulus"



export default class extends Controller {
  static targets = ["start", "end", "form", "total", "daily"]

  connect() {

  }

  calculate_price(event) {
    const startYear = this.startTarget.children[1].children["0"].value

    const startMonth = this.startTarget.children[1].children["1"].value

    const startDay = this.startTarget.children[1].children["2"].value

    const startDate = new Date(`${startYear}-${startMonth}-${startDay}`)

    const endYear = this.endTarget.children[1].children["0"].value

    const endMonth = this.endTarget.children[1].children["1"].value

    const endDay = this.endTarget.children[1].children["2"].value

    const endDate = new Date(`${endYear}-${endMonth}-${endDay}`)

    // console.log((endDate - startDate) / 86_400_000)

    let total = (endDate - startDate) / 86_400_000

    // console.log (this.dailyTarget.innerText)
    // console.log(Math.floor(this.dailyTarget.value))
    // let daily = parseInt(this.dailyTarget.value)
    this.totalTarget.innerText = total * Math.floor(this.dailyTarget.innerText)

  }
// }
}
