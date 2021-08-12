class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.date :dob, null: false
      t.index ["name", "email"],
      name: "index_applicant_on_name_and_email",
      unique: true, using: :btree


    end
  end
end
