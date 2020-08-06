class Clown
    attr_accessor :age, :skill, :fears
    attr_reader :name

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

    def self.names
      clown_names = Clown.all.map do |all_clowns| #Creating a new array with all the clowns
        all_clowns.name #Only need clown names
        end
      clown_names #Returning array of clown names
    end

    def self.find_by_name(name) 
      Clown.all.find do |name_finder|
        name_finder.name == name #If the argument matches the clown name, it'll return the clown.
      end
    end

    def self.oldest
      clown_ages = Clown.all.map do |age_array| #Takes all of the clowns ages.
        age_array.age #puts them into an array for future use
      end
        Clown.all.find do |age_finder| #Finds the clown from the ages.
          age_finder.age == clown_ages.max #Checks to see if clown age == to the oldest clown in the array.. if so it'll be returned
        end
    end

    def self.fearless
        unafraid = []
        Clown.all.find_all do |fear_detector| #Look for all clowns
          if fear_detector.fears == nil #If clowns fears are 'nil'
            unafraid << fear_detector #Clown will get pushed into unafraied array
          end 
        end
        unafraid #Return the Clowns that have faced their fears.
    end

  end # end of Clown class

#Trying out commenting.. Let me know if this is to much or not.