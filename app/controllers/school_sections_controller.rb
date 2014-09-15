class SchoolSectionsController < ApplicationController

	 def new
    @school = SchoolSection.new
  end



  def create
    @school = SchoolSection.new(school_params)

    if @school.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def index
  	@school=SchoolSection.all
  end

  private

  def school_params
    params.require(:school_section).permit(:name, :email, :phone,:address, :status )
  end


end
