class Applicant < ApplicationRecord
  def eligible?
    dob.year.to_i >= 2000 && dob.year.to_i <= 2004
  end

  def self.create_bundle_data name,email,dob
    applicant = Applicant.where("name = ? and email = ?", name.strip, email.strip.downcase)
    if applicant.empty?
      Applicant.create!(name: name.strip, email: email.strip.downcase, dob: Date.strptime(dob, "%m/%d/%Y"))
    end
  end
end
