class Link < ActiveRecord::Base

  def upvote
    self.vote = self.vote + 1
  end
end
