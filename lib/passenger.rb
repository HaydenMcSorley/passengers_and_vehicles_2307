class Passenger
    attr_reader :name, :age, :adult, :driver
   
    def initialize(data)
        @name = data[:name]
        @age = data[:age]
        @driver = false
        @adult = adult
    end

    def driver?
        
    end

    def drive
        @driver = true
    end
end