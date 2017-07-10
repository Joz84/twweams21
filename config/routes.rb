Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index , :show]

  scope "(:locale)", locale: /fr|en/ do
    get 'birthday', to: "pages#birthday", as: "birthday"
    get 'selection', to: "pages#selection", as: "selection"

    root to: "users#index", constraints: lambda { |r| r.env["warden"].authenticate? }
    root to: 'pages#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
