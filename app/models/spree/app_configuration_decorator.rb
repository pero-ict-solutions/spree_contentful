module Spree
  AppConfiguration.class_eval do
    preference :contentful_apikey, :string, default: nil
    preference :contentful_space, :string, default: 'spree'
  end
end
