require "csv"
file_names = ["Students_list_batch2.csv","Students_list_batch2_sheet2.csv"]
file_names.each do |file_name|
  students = CSV.parse(File.read(file_name), encoding: "UTF-8", headers: true)
  students.each do |student|
    if student["name"] && student["email"] && student["dob"]
      Applicant.create_bundle_data(student["name"],student["email"],student["dob"])
    end
  end
end
