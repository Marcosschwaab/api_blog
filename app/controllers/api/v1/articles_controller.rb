class Api::V1::ArticlesController < ApplicationController
    def index
        @articles = Article.all

        
    end
end

