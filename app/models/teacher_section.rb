class TeacherSection < ActiveRecord::Base
  belongs_to :school_section, :foreign_key => :school_id
end
