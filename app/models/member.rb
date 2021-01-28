class Member
    attr_accessor :name, :power, :bio

    @@all = []

    def initialize(name,power,bio)
        @name = name
        @power = power
        @bio = bio
    end

    def self.all
        @@all
    end
end