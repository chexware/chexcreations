require 'rails_helper'

RSpec.describe 'Home', type: :request do
    describe 'GET index' do
        it 'renders the index template' do
           get("/")
           expect(response).to render_template('home/index')
        end

    end    
end