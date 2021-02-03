# your code goes here
require 'pry'

class Person

    attr_reader  :call_friend, :work_out, :start_conversation,:name,:happiness
    attr_accessor  :hygiene, :bank_account
    
    #, :get_paid why dont we need get_paid as an Attr_accesssor

    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene

        #Here because it is a reader method (possible trial)
       #@get_paid = get_paid
        #@take_bath = take_bath
        @call_friend = call_friend
        @start_conversation = start_conversation
    end


    def happiness=(new_value)
        
        @happiness = new_value

        if @happiness >= 10
            @happiness = 10
        elsif @happiness <= 0
            @happiness = 0
        end
    end

    def hygiene=(new_value)
        
        @hygiene = new_value

        if @hygiene >= 10
            @hygiene = 10
        elsif @hygiene <= 0
            @hygiene = 0
        end
    end
    def happy?
        if happiness > 7
           true
        else
            false 
        end
    end

    def clean?
        if hygiene > 7
           true
        else
            false 
        end
    end
    

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
            @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

end

richard = Person.new("richard")
da_mell = Person.new("Da-mell")

puts richard.get_paid(25)


# binding.pry
# 0