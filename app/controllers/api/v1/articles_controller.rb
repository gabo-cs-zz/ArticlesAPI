module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.select(:id, :title, :body)
        render json: { status: 'SUCCESS', message: 'Loaded articles', data: articles }, status: 200
      end
    end
  end
end