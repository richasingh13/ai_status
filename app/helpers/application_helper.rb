module ApplicationHelper

  def flash_class(level)
    case level
    when :success then "alert alert-success"
    when :notice then "alert alert-success"
    when :alert then "alert alert-danger"
    when :error then "alert alert-error"
    when :warning then "alert alert-warning"
    end
  end

  def get_all_employee
     Employee.all.map { |emp| [emp.name, emp.id]}
  end
end
