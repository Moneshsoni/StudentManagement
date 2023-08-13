class Demo < ApplicationRecord
    has_one :sub_demo 

    before_create :message_info

    def message_info
        puts "This is before create callabacks"
        
    end
    
end
