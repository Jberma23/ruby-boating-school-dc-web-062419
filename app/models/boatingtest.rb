class BoatingTest
    @@all = []
    attr_reader :student, :test_name, :insturctor
    attr_accessor  :test_stat
    def initialize(student, test_name, test_stat, insturctor)
        @student = student
        @test_name = test_name
        @test_stat = test_stat
        @insturctor = insturctor
        @@all << self
    end
    def self.all
        @@all
    end

end
