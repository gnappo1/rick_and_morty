class Character
    #self.attr_accessor :name, :gender, :status, :species
    @@all = []

    def initialize(char_hash)
        #we are using mass assignment to abstract and generalize the process for any properties provided upon instantiation
        char_hash.each do |key, value|
            self.class.attr_accessor key #creates accessors
            self.send("#{key}=", value) #sets up the instance variables
        end
        # self.name = char_hash[:name]
        # self.gender = char_hash[:gender]
        # self.status = char_hash[:status]
        # self.species = char_hash[:species]
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end