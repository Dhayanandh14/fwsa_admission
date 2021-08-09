class Applicant < ApplicationRecord
  validates :name,uniqueness:{scope: :email}

  def eligible?
    dob.year.to_i >= 2000 && dob.year.to_i <= 2003
  end
end
