class Joke < ActiveRecord::Base
  validates :content, presence: true

  def to_s
    content
  end

  def self.surprise
    order('random()').first
  end
end
