require "csv"
students = CSV.parse(File.read("Students_list_batch2.csv"), encoding: "UTF-8", headers: true)
students.uniq.each do |student|
  if student["name"] && student["email"] && student["dob"]
    Applicant.create!(name: student["name"], email: student["email"], dob: Date.strptime(student["dob"], "%m/%d/%Y"))
  end
end
