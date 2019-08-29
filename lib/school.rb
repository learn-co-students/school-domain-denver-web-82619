require "pry"
class School
    attr_reader :name
    def initialize name
        @name = name
        @school_roster = {}
    end

    def roster 
        @school_roster
    end

    def add_student (name, grade)
        if @school_roster.include?(grade)
        @school_roster[grade] << name
        else
        @school_roster[grade] = []
        @school_roster[grade] << name    
        end
    end

    def grade (grade)
        @school_roster.fetch_values(grade).flatten
    end

    def sort
        @school_roster.transform_values{|students|students.sort}.sort.to_h
    end

end

#binding.pry