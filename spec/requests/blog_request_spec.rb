require 'rails_helper'

RSpec.describe "Blogs", type: :request do
    describe 'GET blog' do
        it 'renders blog page with all articles' do
            get('/blog')
            expect(response).to have_http_status(:ok)
            expect(response).to render_template('blog/load')
            expect(response).to render_template('project/_load')
            expect(response).to render_template('layouts/_navigation')
            expect(response).to render_template('layouts/_about')
        end
        it 'does not render a different template' do
            get('/blog')
            expect(response).to_not render_template('blog/show')
        end
    end
end
