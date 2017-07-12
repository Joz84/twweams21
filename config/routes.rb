Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:index , :show]

  mount Attachinary::Engine => "/attachinary"

  scope "(:locale)", locale: /fr|en/ do
    get 'birthday', to: "pages#birthday", as: "birthday"
    get 'selection', to: "pages#selection", as: "selection"

    root to: "users#index", constraints: lambda { |r| r.env["warden"].authenticate? }
    root to: 'pages#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
