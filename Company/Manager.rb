require_relative 'Employee'
class Manager < Employee
  def initialize
    @reports = []
    super
  end

  def get_all_employee_salaries(reports)
    reports_salaries = []
    reports.each do |report|
      if report.class.is_a?(Manager)
        reports_salaries.concat(get_all_employee_salaries(report))
      else
        reports_salaries.push(report.salary)
      end
    end
    reports_salaries.reduce(:+)
  end

  def bonus(multiplier)
    base = get_all_employee_salaries(@reports)
    base * multiplier
  end

end
