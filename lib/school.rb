require "pry"

class School
    attr_reader :name, :roster

    def initialize (name)
        @name = name    
        @roster = {}
    end
    
    def add_student (name, grade)
        if roster[grade] != nil
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade (grade)
        roster[grade].map {|student| student}
    end

    def sort
        sorted_hash = {}
        roster.each do |key, value|
            sorted_hash[key] = value.sort
        # binding.pry
        end
        sorted_hash
    end

end

# school = School.new("Bayside High School")

# school.add_student("John", 11)
# school.add_student("Katie", 10)
# school.add_student("Becky", 10)
# school.add_student("Dan", 12)

# binding.pry
