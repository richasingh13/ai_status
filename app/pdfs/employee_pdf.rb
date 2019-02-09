class EmployeePdf < Prawn::Document
  require 'open-uri'
  def initialize(employee)
    super()
    @employee = employee
    employee_detail
    line_items
  end
  
  def employee_detail
    text "<b>Employee Details</b>", size: 15, align: :center, inline_format: true
    
      move_down 5
   image open("/home/nsds/new_projects/ai-status/app/assets/images/user-dummy.png"),:image_height => 50, :image_width => 50, :width => 60, :border_radius => 50, position: :center, :borders => [:left, :right, :top, :bottom] 
  end

  def line_items
    move_down 20 
   data = [ ["Name:", "#{@employee.name}"],
 ["Contact:", "#{@employee.contact}"],
 ["Date-of-Birth:", "#{@employee.date_of_birth}"],
 ["Gender:", "#{@employee.gender}"],
 ["Marital-status:", "#{@employee.marital_status}"],
 ["Email:", "#{@employee.email}"],
 ["Permanent-Address:", "#{@employee.permanent_address}"],
 ["Current-Address:", "#{@employee.permanent_address}"],
 ["City:", "#{@employee.city}"],
 ["State:", "#{@employee.state}"],
 ["Nationality:", "#{@employee.nationality}"],
 ["Designation:", "#{@employee.designation}"],
 ["Date-of-Joining:", "#{@employee.date_of_joining}"],
 ["Skype-Username", "#{@employee.skype_username}"],
 ["Linkedin-Profile-Url:", "#{@employee.linkedin_profile_url}"],
 ["Github-Username:", "#{@employee.github_username}"],
 ["Aadhar-uid:", "#{@employee.aadhar_uid}"],
 ["Pan-uid:", "#{@employee.pan_uid}"],
 ["Job-Description:", "#{@employee.job_description}"]

 ]

  table(data, :cell_style => {:padding => [5, 5, 5, 5], :width => 270})
  end

  
  
end
  
