require "pry"

class Student
    attr_reader :first_name 
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, stat, instructor)
        BoatingTest.new(self, test_name, stat, instructor)
    end

    def self.find_student(first_name)
        Student.all.find {|student| student.name == first_name}
    end

    # `Student#grade_percentage` should return the percentage of tests 
    # that the student has passed, a Float (so if a student has passed 3 / 9 
    # tests that they've taken, this method should return the Float `33.33`)
    def return_test
        BoatingTest.all.select {|test| test.student == self}
    end
    def grade_percentage
        testx = return_test
        score = ((testx.select {|test| test.test_stat == 'passed'}.length.to_f/testx.length.to_f)*100)
        final = "#{score}%"
        binding.pry
    end

end

