module Api
  module V1
    class SchoolSectionsController < BaseController

      before_filter :parse_pagination_params, only: :index

      def index
        @proc_code = Proc.new do
          @data = SchoolSection.where("status = 'active'").order("name asc").page(@current_page).per(@per_page).all
          @success = true
          @errors = {}
        end

      end

      def show
          @proc_code = Proc.new do
          @data = SchoolSection.find(params[:id])
          @success = true
          @errors = {}
        end


      end

    end
  end
end