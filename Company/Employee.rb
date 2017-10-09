class Employee
  def initialize(first_name, last_name, salary, title, boss)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @title = title
    @boss = boss
  end
  def bonus(multiplier)
    @salary * multiplier
  end
end
