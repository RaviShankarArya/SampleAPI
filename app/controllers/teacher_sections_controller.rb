class TeacherSectionsController < ApplicationController

 def new
    @teacher = TeacherSection.new
  end



  def create
    @teacher = TeacherSection.new(teacher_params)

    if @teacher.save
      redirect_to root_path
    else
      redirect_to new_teacher_section_path
    end
  end


  private

  def teacher_params
    params.require(:teacher_section).permit(:name, :school_id )
  end


end
