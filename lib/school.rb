require "pry"

class School
  def initialize(name)
    @name= name
    @roster= {
      :9 => ["fdfdf", "dfdfdf"],
      :10 => ["dfddf", "dfdfdf"],
  #    :11 => ["dfdf", "dfdfdf"]
    }
  end

  def roster
    @roster
  end

  GRADES= [ ]
  def add_student(student_name, grade)
    if @roster == {}
      @roster[grade] = []
      @roster[grade] << "#{student_name}"
    elsif @roster.keys.include? (grade)
      @roster[grade] << "#{student_name}"
    else
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
