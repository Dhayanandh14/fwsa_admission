class Applicant < ApplicationRecord
  def eligible?
    dob.year.to_i >= 2000 && dob.year.to_i <= 2004
  end

#selection_status
  def self.create_bundle_data email,selection_status
    Applicant.where("email= ?", email).update_all(selection_status: selection_status)
    # Applicant.where("status is ?",nil).update_all(status: "Not Selected")
  end
end



#update the fsat status
#   def self.create_bundle_data student
#     Applicant.where("email= ?", student).update_all(status: "Selected for Final Round")
#     Applicant.where("status is ?",nil).update_all(status: "Not Selected")
#   end
# end





#create

# def self.create_bundle_data name,email,dob
#   applicant = Applicant.where("name = ? and email = ?", name.strip, email.strip.downcase)
#   if applicant.empty?
#     Applicant.create!(name: name.strip, email: email.strip.downcase, dob: Date.strptime(dob, "%m/%d/%Y"))
#   end
# end
# end
