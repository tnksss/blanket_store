Rails.application.routes.draw do
  # Define a página inicial (root) do seu site apontando para o controller Home e a action index
  root "home#index"

  # Rotas de verificação de saúde do app (nativas do Rails)
  get "up" => "rails/health#show", as: :rails_health_check
end