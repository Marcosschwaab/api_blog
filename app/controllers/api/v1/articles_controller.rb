class Api::V1::ArticlesController < ApplicationController
    def index
        Article.all

        render json: Article.all, status: :accepted
    end
end