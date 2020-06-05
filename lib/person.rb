# your code goes here

class Person
    def initialize(name)
        @name = name
        @happiness_points = 8
        @hygiene_points = 8 
        @bank_account = 25
    end
    def name
        @name
    end

    def bank_account
        @bank_account
    end 

    def bank_account=(new_money)
        @bank_account += new_money
    end

    def happiness
        @happiness_points
    end

     def happiness=(new_points)
        @happiness_points = new_points
        if @happiness_points > 10 
            @happiness_points = 10
        end
        if @happiness_points < 0
            @happiness_points = 0
        end
     end

    def hygiene
        @hygiene_points 
    end

    def hygiene=(new_points)
        @hygiene_points = new_points
        if @hygiene_points > 10 
            @hygiene_points = 10
        end
        if @hygiene_points < 0
            @hygiene_points = 0
        end
    end
    def happy?
        if @happiness_points > 7
            return true
        else
            return false
        end
    end  

    def clean?
        if @hygiene_points > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        @hygiene_points += 4
        self.hygiene=(@hygiene_points)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene_points -= 3
        self.hygiene=(@hygiene_points)
        @happiness_points += 2
        self.happiness=(@happiness_points)
        return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        @happiness_points += 3
        self.happiness=(@happiness_points)
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
    def start_conversation (friend, topic)
        case topic
        when "politics"
            @happiness_points -= 2
            self.happiness=(@happiness_points)
            friend.happiness=(@happiness_points)
            return "blah blah partisan blah lobbyist"
        when "weather"
            @happiness_points += 1
            self.happiness=(@happiness_points)
            friend.happiness=(@happiness_points)
            return "blah blah sun blah rain"
        end

        return "blah blah blah blah blah"
    end


 end




