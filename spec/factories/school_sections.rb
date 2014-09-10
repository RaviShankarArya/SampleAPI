FactoryGirl.define do
  factory :school_section do
    name "School Section"
    email "somename@domain.com"
    phone "111-222-3333"
    address "#99, Street #123, Some Road, Some City"

  end

  factory :active_school_section, :parent => :school_section do
    status "active"
  end

  factory :inactive_school_section, :parent => :school_section do
    status "inactive"
  end
end