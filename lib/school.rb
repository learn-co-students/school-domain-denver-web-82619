class School  
    def initialize (name) 
        @name = name 
        @school_roster = {}
    end  

    def roster 
        @school_roster
    end  

    def add_student (name, grade) 
        if 
        @school_roster.include?(grade)
        @school_roster[grade] << name
        else 
        @school_roster[grade] = []
        @school_roster[grade] << name
        end 
    end

        def grade (grade) 
            @school_roster[grade]
        end  

        def sort 
            @school_roster.transform_values do |student|
                student.sort
            end.sort.to_h
        end


end  
