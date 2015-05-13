class Joke < ActiveRecord::Base
  def vote_up
    self.increment!(:rating)
  end

  def vote_down
    self.decrement!(:rating)
  end
end
