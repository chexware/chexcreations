require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    describe 'When loading home page ' do
        it 'returns 200' do
          get :index
          expect(response).to have_http_status(:ok)
        end

        it 'creates and empty contact' do
          get :index
          expect(controller.request.path_parameters[:contact]).to eq(nil)
        end

        it 'gets all projects' do
          # setup
          project = create(:project, title: "test", link: "http://link.test.com")
          project2 = create(:project, title: "test2", link: "http://link.test2.com")
          # exercise
          get :index
          # verify
          expect(assigns(:projects)).to eq([project,project2])
          # teardown is handled for you by RSpec
        end 
    end    
end
