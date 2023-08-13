class Department < ApplicationRecord
    has_one :manager
    has_one :manager_history, through: :manager

    before_create :message_greet
    def message_greet
        puts "This is message greet methods!"        
    end
    
end
