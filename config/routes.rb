Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :contentful, only: [:edit, :update]
  end
end
