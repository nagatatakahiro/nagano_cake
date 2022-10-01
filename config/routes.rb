Rails.application.routes.draw do


  namespace :public do
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
   namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
  end
  devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  namespace :admin do
    resources :genres,only: [:index,:create,:edit,:update]
    resources :items,only: [:index,:new,:create,:show,:edit,:update]
    resources :customers,only: [:index,:show,:edit,:update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
