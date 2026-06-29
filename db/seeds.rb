# Limpa o banco de dados antes de cadastrar para não duplicar dados se rodarmos o comando mais de uma vez
puts "Limpando o banco de dados..."
Variant.destroy_all
ProductColor.destroy_all
Product.destroy_all

puts "Criando produtos de teste..."

# ==========================================
# PRODUTO 1: EDREDOM
# ==========================================
edredom = Product.create!(
  name: "Edredom Toque de Pluma Ultra Soft",
  description: "Experimente o conforto dos melhores hotéis cinco estrelas na sua cama. Confeccionado com percal 400 fios e enchimento térmico de alta tecnologia.",
  category: "Cama",
  tag: "Mais Vendido"
)

# Cores do Edredom (Com as novas URLs de imagens reais)
cor_branco = ProductColor.create!(
  product: edredom, 
  color_name: "Branco Hotel",
  image_url: "https://images.unsplash.com/photo-1540518614846-7eded433c457?auto=format&fit=crop&w=600&q=80"
)
cor_cinza  = ProductColor.create!(
  product: edredom, 
  color_name: "Cinza Platinado",
  image_url: "https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?auto=format&fit=crop&w=600&q=80"
)

# Variantes (Tamanho, Preço, Estoque) do Edredom Branco
Variant.create!(product_color: cor_branco, size: "Casal", price: 299.90, stock: 10, sku: "EDR-BR-CAS")
Variant.create!(product_color: cor_branco, size: "King",  price: 399.90, stock: 5,  sku: "EDR-BR-KIN")

# Variantes do Edredom Cinza
Variant.create!(product_color: cor_cinza, size: "Queen", price: 349.90, stock: 8,  sku: "EDR-CZ-QUE")
Variant.create!(product_color: cor_cinza, size: "King",  price: 399.90, stock: 0,  sku: "EDR-CZ-KIN") # Esgotado


# ==========================================
# PRODUTO 2: TOALHAS
# ==========================================
toalhas = Product.create!(
  name: "Jogo de Toalhas de Algodão Egípcio",
  description: "Absorção incomparável e toque incrivelmente macio desde o primeiro uso. Fios penteados de algodão egípcio legítimo.",
  category: "Banho",
  tag: "Lançamento"
)

# Cores da Toalha (Com as novas URLs de imagens reais)
cor_oliva = ProductColor.create!(
  product: toalhas, 
  color_name: "Verde Oliva",
  image_url: "https://images.unsplash.com/photo-1546554137-f86b9593a222?auto=format&fit=crop&w=600&q=80"
)
cor_rosa  = ProductColor.create!(
  product: toalhas, 
  color_name: "Rosa Seco",
  image_url: "https://images.unsplash.com/photo-1616627561950-9f746e330187?auto=format&fit=crop&w=600&q=80"
)

# Variantes da Toalha
Variant.create!(product_color: cor_oliva, size: "Padrão (4 Peças)", price: 149.90, stock: 15, sku: "TOA-OL-PAD")
Variant.create!(product_color: cor_rosa,  size: "Padrão (4 Peças)", price: 149.90, stock: 12, sku: "TOA-RS-PAD")

puts "Banco de dados populado com sucesso! 🌱"