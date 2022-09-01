import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  open() {
    document.getElementById('overlay').classList.remove("hidden");
    document.getElementById('overlay').classList.add("flex");
  }
  close() {
    document.getElementById('overlay').classList.remove("flex");
    document.getElementById('overlay').classList.add("hidden");
  }
}