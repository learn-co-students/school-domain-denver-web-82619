# code here!
require "pry"

class School 

    def initialize name 
        @name = name 
        @school_roster = {}
    end 

    def roster
        @school_roster
    end 

    def add_student(name, grade)
        school_roster[grade] = []
        school_roster[grade] << name
        school_roster => {grade => [name]}

    end 
end 

binding.pry 
school = School.new("Bayside High School")
