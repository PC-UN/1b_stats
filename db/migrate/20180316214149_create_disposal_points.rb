class CreateDisposalPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :disposal_points do |t|
      t.string :disposal_point_name
      t.string :disposal_point_address
      t.string :city
      t.string :department
      t.string :country
      t.string :residue_category
      t.string :residue_type
      t.string :residue_name
      t.string :location
      t.string :schedule
      t.string :postconsumption_program_name
      t.string :contact_person
      t.string :email

      t.timestamps
    end
  end
end
