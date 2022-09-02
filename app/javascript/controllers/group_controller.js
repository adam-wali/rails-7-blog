import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"];
  openModal() {
    console.log('openModal');
    let modalController = this.application.getControllerForElementAndIdentifier(
      this.modalTarget,
      "modal"
    );
    modalController.open();
  }
  closeModal() {
    let modalController = this.application.getControllerForElementAndIdentifier(
      this.modalTarget,
      "modal"
    );
    modalController.close();
  }
}
