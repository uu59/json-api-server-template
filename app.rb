require_relative "config/boot.rb"

module App
  class API < Grape::API
    version 'v1', using: :path
    format :json

    resource :foo do
      route_param :id, type: Integer do
        get do
          [params[:id], 1,2,3]
        end
      end
    end
  end
end


