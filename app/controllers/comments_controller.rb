class CommentsController <ApplicationController
    TOKEN = 'auth-token'
    before_action :authenticate
    def authenticate
        authenticate_or_request_with_http_token do |token|
            ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
        end
    end

    def index 
        @comments = Comment.all
        render json: @comments
    end

    def show
        @comment = Comment.find_by(params[:id])
        render json: @comment
    end

    def create_comments
        @article = Article.find_by(params[:id])
        @comment = Comment.create({username: params[:username], content: params[:content], articles_id: params[:articles_id]})
        render json: @comment
    end
end