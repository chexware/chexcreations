require 'rails_helper'

RSpec.describe 'Home', type: :request do
    describe 'GET index' do
        it 'renders home page' do
            get('/')
            expect(response).to have_http_status(:ok)
            expect(response).to render_template('home/index')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_about')
        end

        it 'does not render a different template' do
            get('/')
            expect(response).to_not render_template('home/show')
        end
    end
end