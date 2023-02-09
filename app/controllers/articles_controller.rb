class ArticlesController < ApplicationController

    # TOKEN = 'auth-token'
    # before_action :authenticate
    # def authenticate
    #     authenticate_or_request_with_http_token do |token|
    #         ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    #     end
    # end

    def index 
        @articles = Article.all
        render json: @acticles
    end

    def show
        # if we will ise find then if data will not be found then , error will be thrown 
        @article = Article.find_by(params[:id])
        # @article = Article.find(params[:id]) rescue nil #we we need necessary data we should avoid this
        render json: @article
    end

    def create_article
        @article = Article.create({title: params[:title], body: params[:body]})
        render json: @article
    end

    def show_comments
        @article = Article.find(params[:id])
        @comments= @article.comments
        render json: @comments
    end
end