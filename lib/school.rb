require "pry"

class School
  def initialize(name)
    @name= name
    @roster= {}
  end

  def roster
    @roster
  end

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
    sorted_roster={}
    sorted_grades=[]
    sorted_names=[]
    @roster.each do |grade, array|
      
      array.sort
    end
  end

end
