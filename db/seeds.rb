require "csv"
results ="batch2_selection_status.csv"
# results.each do |result|
  student_results = CSV.parse(File.read(results), encoding: "UTF-8", headers: true)
  student_results.each do |student|
    puts student["selection_status"]
    if student["email"] && student["selection_status"]
        Applicant.create_bundle_data(student["email"],student["selection_status"])
    end
   end


# #fsat selecton
# require "csv"
# results ="batch2_students_results.csv"
# # results.each do |result|
#   student_results = CSV.parse(File.read(results), encoding: "UTF-8")
#   student_results.each do |student|
#     puts student
#     if student
#         Applicant.create_bundle_data(student)
#       end
#    end






# require "csv"
# file_names = ["Students_list_batch2.csv","Students_list_batch2_Sheet2.csv","Students_list_batch2_Sheet3.csv"]
# file_names.each do |file_name|
#   students = CSV.parse(File.read(file_name), encoding: "UTF-8", headers: true)
#   students.each do |student|
#     if student["name"] && student["email"] && student["dob"]
#       Applicant.create_bundle_data(student["name"],student["email"],student["dob"])
#     end
#   end
# end
