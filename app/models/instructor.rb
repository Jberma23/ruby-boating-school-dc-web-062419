require 'pry'
class Instructor
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    # `Instructor#pass_student` should take in a student instance and test name. 
    # If there is a `BoatingTest` whose name and student match the values passed 
    # in, this method should update the status of that BoatingTest to 'passed'. 
    # If there is no matching test, this method should create a test with the student,
    #  that boat test name, and the status 'passed'. Either way, it should return the
    #   `BoatingTest` instance.
    def pass_student(student, test_name)
        begin
            test_results = BoatingTest.all.find {|test| student == test.student and 
            test_name == test.test_name}
            test_results.test_stat = "passed"
            
        rescue
            if test_results == nil 
                BoatingTest.new(student, test_name, "passed", self )
            end
           
        end
    end
    def fail_student(student, test_name)
            begin
            test_results = BoatingTest.all.find {|test| student == test.student and 
            test_name == test.test_name}
            test_results.test_stat = "failed"
            rescue
            if test_results == nil 
                BoatingTest.new(student, test_name, "failed", self )
            end
            end
        end
            

end
