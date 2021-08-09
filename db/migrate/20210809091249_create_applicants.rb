class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.date :dob, null: false
    end
  end
end
