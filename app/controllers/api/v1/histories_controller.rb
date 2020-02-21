module Api
  module V1
    class HistoriesController < ApplicationController
      def index
        @histories = current_user.histories.order("created_at DESC")
        json_response(@histories)
      end

      def create
        @history = current_user.histories.create!(history_params)
        json_response(@history, :created)
      end

      private

      def history_params
        params.permit(:question)
      end
    end
  end
end
