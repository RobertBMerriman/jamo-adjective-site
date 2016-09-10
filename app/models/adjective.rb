class Adjective < ApplicationRecord

  class << self

    def find_random
      self.limit(1).offset(rand(self.count)).first # Find a random record
    end

  end

end
