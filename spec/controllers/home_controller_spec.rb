require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    describe 'GET index' do
        it 'return 200' do
          get :index
          expect(response).to have_http_status(:ok)
        end

        it 'creates and empty Contact entity' do
          get :index
          expect(controller.request.path_parameters[:contact]).to eq(nil)
        end
    end    
end
