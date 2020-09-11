require 'rails_helper'

RSpec.describe 'Home', type: :request do
    describe 'GET index' do
       # setup
       # exercise
       # verify
       # teardown is handled for you by RSpec
        it 'assigns @contact' do
           # contact_test = Contact.create(:name=>[], :email=>[], :message=>[], :nickname=>[])
            get("/")
            expect(response).to render_template('home/index')
            expect(assigns(:contact)).to eq(Contact.new)
        end

        it 'assigns @projects' do
            proje
            get("/")
            expect(assigns(:projects)).to eq([project,project])
        end
        
        it 'renders the index template' do
           get("/")
           expect(response).to render_template('home/index')
        end

    end    
end