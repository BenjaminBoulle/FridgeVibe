import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  connect() {
    var typed = new Typed('.banner_text', {
    strings: ["cook more", "waste less", "live better"],
    typeSpeed: 200,
    cursorChar: '_',
    loop: true
    });
  }
}
