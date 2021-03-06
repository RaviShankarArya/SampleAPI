class CreateSchoolSections < ActiveRecord::Migration
  def change
    create_table :school_sections do |t|
      t.string :name, limit: 255
      t.string :email, limit: 255
      t.string :phone, limit: 30
      t.string :address, limit: 512
      t.string :status, limit: 55

      t.timestamps
    end
  end
end
