class Clown
    attr_accessor :name, :age, :skill, :fears
    attr_reader

    @@all = []

    def self.all
      @@all
    end 

    def initialize(name,age,skill,fears)
      @name = name
      @age = age
      @skill = skill
      @fears = fears
      @@all << self
    end
    
    def lie_about_age(age)
      @age = age
    end

    def overcome_fears
      @fears = nil
    end

    def say_hi
      "Hello my name is #{@name}. I'm #{@age} years old. I'm good at #{@skill} and terrified of #{@fears}."
    end

    def names
    Clown.all.name
    end

end # end of Clown class

x = Clown.new("grumpy",13,"juggling","children")
binding.pry

UNFINSIHED CODE PLEASE HOLD

# - [ ] `Clown.names`
#     - *return* an array of strings for each clown's name
# - [ ] `Clown.find_by_name(name)`
#     - *return* a single Clown instance for the clown whose name matches the name argument for this method.
# - [ ] `Clown.oldest`
#     - *return* a single Clown instance for the clown with the highest age.
# - [ ] `Clown.fearless`
#     - *return* an array of Clown instances who have overcome their fears (i.e. their fears is `nil`)
