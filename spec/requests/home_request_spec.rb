require 'rails_helper'

RSpec.describe 'Home', type: :request do
    describe 'GET index' do
        it 'renders home page' do
            get('/')
            expect(response).to render_template('home/index')
        end
    end
    pending "TO DO: Home page tests"
end