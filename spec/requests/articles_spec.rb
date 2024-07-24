require 'rails_helper'

RSpec.describe "Articles" do
    before(:each) { Article.create(title: 'art 1', content: 'conteudo do art 1') }

    context "GET /articles" do
        it 'responds with status OK' do
            get '/articles.json'

            expect(response).to have_http_status(:accepted)
        end
            it 'responds with correct persisted article json' do
                get '/articles.json'
    
                expect(response.body).to include('art 1')
                expect(response.body).to include('conteudo do art 1')
            end
    end
end

