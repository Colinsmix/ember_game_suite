class GuessTheSquare < ActiveRecord::Base
  validates_presence_of :score
  validates_presence_of :difficulty
end
