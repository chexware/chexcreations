require 'rails_helper'

RSpec.describe 'Contacts', type: :request do
    describe 'GET contact' do
        it 'renders contact form page' do
            get('/contact')
            expect(response).to have_http_status(:ok)
            expect(response).to render_template('contacts/new')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')
        end

        it 'does not render a different template' do
            get('/contact')
            expect(response).to_not render_template('contacts/show')
        end
    end

    describe 'POST contact' do
        it 'sends incorrect contact form page' do
            get('/contact')
            expect(response).to have_http_status(:ok)
            expect(response).to render_template('contacts/new')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')

            post "/contact", params: { contact: { name: "Test Name", email: "test-email.com", message: "test message" } }
            expect(response).to redirect_to('/contact')

            follow_redirect!
            expect(response).to render_template('contacts/new')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')
            expect(response.body).to include("Invalid name or e-mail address")
        end

        it 'sends correct contact form page' do
            get('/contact')
            expect(response).to have_http_status(:ok)
            expect(response).to render_template('contacts/new')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')

            post "/contact", params: { contact: { name: "Test Name", email: "test@email.com", message: "test message" } }
            expect(response).to redirect_to('/contact')

            follow_redirect!
            expect(response).to render_template('contacts/new')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')
            expect(response.body).to include("Thank you for contacting me! I will be in touch soon ;)")
        end
    end
end