require 'rails_helper'

RSpec.describe BlogController, type: :controller do
    describe 'When loading the blog ' do
        it 'returns 200' do
            get :load
            expect(response).to have_http_status(:ok)
        end

        it 'creates and empty contact' do
            get :load
            expect(controller.request.path_parameters[:contact]).to eq(nil)
        end

        it 'gets all projects' do
            # setup
            project = create(:project, title: "test", link: "http://link.test.com")
            project2 = create(:project, title: "test2", link: "http://link.test2.com")
            # exercise
            get :load
            # verify
            expect(assigns(:projects)).to eq([project,project2])
            # teardown is handled for you by RSpec
        end 

        it 'gets all articles' do
            # setup
            article = create(:article, title: "test", content: "<p>test content</p>")
            article2 = create(:article, title: "test2", content: "<p>more test content</p>")
            # exercise
            get :load
            # verify
            expect(assigns(:articles)).to eq([article2,article])
            # teardown is handled for you by RSpec
        end 
    end
end
