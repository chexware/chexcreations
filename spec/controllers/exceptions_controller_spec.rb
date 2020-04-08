require 'rails_helper'

RSpec.describe "ExceptionsController", type: :controller do
  @controller = ExceptionsController;
  describe 'GET 404' do
    it 'renders the not_found template' do
      get("/actually")
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
