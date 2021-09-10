class SelectionStatusToApplicant < ActiveRecord::Migration[6.1]
  def change
    add_column :applicants, :selection_status, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
