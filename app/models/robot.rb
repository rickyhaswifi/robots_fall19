class Robot < ApplicationRecord

    belongs_to :inventor

    def greets
        self.friendly ? 'Hello' : 'Put the cookie down'
    end
end
