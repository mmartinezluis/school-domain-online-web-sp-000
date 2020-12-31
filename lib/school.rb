require "pry"

class School
  def initialize(name)
    @name= name
    @roster= {}
  end

  def roster
    @roster
  end

  GRADES= [ ]
  def add_student(student_name, grade)
    GRADES << grade
    if @roster == {}
      @roster[grade]= []
      @roster[grade] << "#{student_name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort do |grade, array|
      grade <=> array
    end
  end

end
