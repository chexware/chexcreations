require 'rails_helper'

RSpec.describe 'Project', type: :request do
    describe 'GET art' do
        it 'renders the load_art template' do
          get('/art')
          expect(response).to render_template('project/load_art')
        end
    end
    describe 'GET software' do
        it 'renders the load_software template' do
            get('/software')
            expect(response).to render_template('project/load_software')
        end
    end
end