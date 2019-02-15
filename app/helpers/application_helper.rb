module ApplicationHelper

  def get_all_employee
     Employee.all.map { |emp| [emp.name, emp.id]}
  end
end
