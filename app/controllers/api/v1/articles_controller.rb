module Api
  module V1
    class ArticlesController < ApplicationController
      before_action :set_article, only: [:show, :update, :destroy]

      def index
        #return all articles
        @articles = Article.all.order("created_at DESC")
        json_response(@articles)
      end

      def create
        #allow to create only if he is admin
        if current_user.admin?
          @article = Article.create!(article_params)
          json_response(@article, :created)
        else
          json_response({ "message": "you are not allowed to this route!" })
        end
      end

      def show
        json_response(@article)
      end

      def update
        if current_user.admin?
          @article.update(article_params)
          #return updated article
          json_response(@article)
        else
          json_response("you are not allowed to this route!")
        end
      end

      def destroy
        if current_user.admin?
          @article.destroy
          json_response("article deleted")
        else
          json_response("you are not allowed to this route!")
        end
      end

      private

      def article_params
        params.permit(:title, :content)
      end

      def set_article
        #setting article for updation,deletion
        @article = Article.find(params[:id])
      end
    end
  end
end
