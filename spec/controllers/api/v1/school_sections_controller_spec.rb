require "rails_helper"
require 'spec_helper'

describe Api::V1::SchoolSectionsController, :type => :controller do

  describe "GET #school_sections" do
    it "should return a list of active school sections" do
      3.times do
        FactoryGirl.create(:active_school_section)
      end
      2.times do
        FactoryGirl.create(:inactive_school_section)
      end
      current_page = 1
      per_page = 10
      get :index #, page: current_page, per_page: per_page
      school_sections = SchoolSection.where("status = 'active'").order("name asc").page(current_page).per(per_page).all
      expect(assigns[:data]).to eq(school_sections)
    end
  end

end