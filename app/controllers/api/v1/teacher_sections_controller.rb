module Api
  module V1
    class TeacherSectionsController < BaseController

      before_filter :parse_pagination_params, only: :index

      def index
        @proc_code = Proc.new do
          @school = SchoolSection.first
          current_page = 1
          per_page = 10
          @data = TeacherSection.where("school_id = ?", @school.id).order("name asc").page(current_page).per(per_page)
          @success = true
          @errors = {}
        end

      end

    end
  end
end