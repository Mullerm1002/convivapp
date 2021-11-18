import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['image-junior', 'image-senior', 'form', 'junior', 'senior', 'card'];

  displayForm() {
    // this.imageTarget.classList.add('d-none');
    // console.log(this.juniorTarget)
    this.formTarget.classList.remove('d-none');
    this.juniorTarget.classList.remove('d-none');
    this.seniorTarget.classList.add('d-none');
    this.cardTarget.classList.remove('d-none');
    document.getElementById('role').value = 'junior';
  }
  displayFormSenior() {
  //   // this.imageTarget.classList.add('d-none');
  //   this.seniorTarget.classList.toggle('d-none');
  this.formTarget.classList.remove('d-none');
  this.juniorTarget.classList.add('d-none');
  this.seniorTarget.classList.remove('d-none');
  this.cardTarget.classList.add('d-none');
  document.getElementById('role').value = 'senior';

  }
}