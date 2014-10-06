class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age
    age = 0
    all.each do |student|
      age += student[:age]
    end
    age/(all.length)
  end

  def name_string
    all.map do |student|
      student[:name]
    end.join(' ')
  end

  def find_first_older_than(age)
    all.select { |student| student[:age] > age }.first
  end

  def any_older_than?(age)
    all.select { |student| student[:age] > age }.length > 0
  end

  def find_student(student)
    all.select { |object| student == object }.first
  end

  def student_present?(student)
    all.include?(student)
  end

  def grouped_by_age
    all.group_by { |student| student[:age] }
  end
end