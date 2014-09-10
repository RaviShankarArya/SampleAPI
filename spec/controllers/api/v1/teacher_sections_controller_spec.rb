require "rails_helper"
require 'spec_helper'

describe Api::V1::TeacherSectionsController, :type => :controller do

  describe "GET #teacher_sections" do
     let(:school) {FactoryGirl.create(:school_section)}
     3.times do |index|
      let("teacher_#{index+1}") {FactoryGirl.create(:teacher_section, :school_section => school)}
     end

    it "should return a list of teacher sections" do
      [school, teacher_1, teacher_2, teacher_3]

      current_page = 1
      per_page = 10

      get :index #, page: current_page, per_page: per_page
      teacher_sections = TeacherSection.where("school_id = ?", school.id ).order("name asc").page(current_page).per(per_page)
      expect(assigns[:data]).to match_array(teacher_sections)
    end
  end

end