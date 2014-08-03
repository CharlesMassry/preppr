require "monban/constraints/signed_in"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resource :search
  resources :decks do
    member do
      post "enter" => "deck_memberships#create", as: "enter"
      delete "leave" => "deck_memberships#destroy", as: "leave"
    end
    resources :cards
  end
end
