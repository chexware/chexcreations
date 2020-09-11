require 'rails_helper'

RSpec.describe "Blogs", type: :request do
    describe 'GET blog' do
        it 'renders all blog posts' do
            get('/blog')
            expect(response).to render_template('blog/load')
        end
    end
end
