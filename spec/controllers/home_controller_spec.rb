require 'rails_helper'

RSpec.describe "Homes", type: :request do
    describe 'GET home' do
        it 'renders the home template' do
          get("/")
          expect(response).to render_template('home/index')
        end
    end    
end
