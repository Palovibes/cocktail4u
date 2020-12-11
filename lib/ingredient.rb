class Ingredient
    
    @@all =[]
    
    attr_accessor :cocktails, :name
    
    def self.all
        @@all
    end
    
    
    def initialize(name) 
        self.name = name 
        self.cocktails = []
        self.class.all << self
    end 

 #    def initialize(attributes)
    #     attributes.each do |key, value| 
    #     self.class.attr_accessor(key)
    #     self.send(("#{key}="), value)
    #     self.class.all << self
    #   end
    # end  


    def self.find_by_name(name)
        self.all.find {|ingredient_object| ingredient_object.name == name} 
    end 

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.new(name)
    end
end 