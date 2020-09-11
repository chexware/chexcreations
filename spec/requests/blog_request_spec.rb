require 'rails_helper'

RSpec.describe "Blogs", type: :request do
    describe 'GET blog' do
        it 'renders all articles page' do
            get('/blog')
            expect(response).to render_template('blog/load')
        end
    end
    pending "TO DO Blog Page Tests"
end
