class TestController < ApplicationController
    TOKEN = 'abcd'
    before_action :authenticate
    def authenticate
        authenticate_or_request_with_http_token do |token|
            ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
        end
    end
    def index
        @test1 = Test.all
        render :json => @test1
    end
end