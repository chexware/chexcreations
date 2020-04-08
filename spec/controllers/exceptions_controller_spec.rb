require 'rails_helper'

RSpec.describe "Exceptions", type: :request do
  describe 'GET 404' do
    it 'renders the not_found template' do
      get("/404")
      expect(response).to render_template('exceptions/not_found')
    end
  end

  describe 'GET 422' do
    it 'renders the unacceptable template' do
      get("/422")
      expect(response).to render_template('exceptions/unacceptable')
    end
  end

  describe 'GET 500' do
    it 'renders the internal_error template' do
      get("/500")
      expect(response).to render_template('exceptions/internal_error')
    end
  end
end
