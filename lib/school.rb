class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !roster[grade]
            roster[grade] = [student_name]
        else
            roster[grade].push(student_name)
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.reduce({}) do |memo, (grade, student_array)|
            memo[grade] = student_array.sort
            memo
        end
    end
end

school = School.new("Bayside High School")