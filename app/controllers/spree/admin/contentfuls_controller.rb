module Spree
  module Admin
    class ContentfulsController < BaseController
      def edit
      end
      def update
        params.each do |name, value|
          next unless Spree::Config.has_preference? name
          Spree::Config[name] = value
        end

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:contentful))
        redirect_to edit_admin_contentful_url
      end
    end
  end
end
