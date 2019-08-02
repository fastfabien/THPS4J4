class CreateSpecialityDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :speciality_doctors do |t|
    	t.belongs_to :doctor, index: true
    	t.belongs_to :speciality, index: true
      t.timestamps
    end
  end
end
