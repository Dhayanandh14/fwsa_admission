class Applicant < ApplicationRecord

  def eligible?
    dob.year.to_i >= 2000 && dob.year.to_i <= 2003
  end
end
