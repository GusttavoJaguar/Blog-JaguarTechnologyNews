Rails.application.routes.draw do
  root 'news#index'  # Define a página inicial da aplicação como a lista de notícias

  resources :news    # Define todas as rotas RESTful para o recurso 'news'
end
