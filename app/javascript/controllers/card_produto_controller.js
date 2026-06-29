import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card-produto"
export default class extends Controller {
  static targets = [ "mainImage" ]

  // Método que será disparado ao clicar na cor
  changeColor(event) {
    event.preventDefault()
    
    // 1. Pega a URL da imagem que passamos no botão da cor
    const newImageUrl = event.currentTarget.dataset.imageUrl
    
    // 2. Altera o atributo src da nossa imagem principal (Target)
    if (newImageUrl) {
      this.mainImageTarget.src = newImageUrl
    }
  }
}