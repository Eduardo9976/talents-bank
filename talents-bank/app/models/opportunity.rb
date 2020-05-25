class Opportunity < ApplicationRecord
  before_create :generate_code

  def generate_code
    self.code = SecureRandom.alphanumeric(6).upcase
  end  
end
