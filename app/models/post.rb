class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes
  has_many :commentvotes

  validates :title, presence: true, 
                    length: { minimum: 5 }

  def votes_total
    return nil if (upvotes + downvotes).empty? 
    upvotes.size - downvotes.size
  end

  def comment_votes_total
    return nil if (comment_upvotes + comment_downvotes).empty?
    comment_upvotes.size - comment_downvotes.size
  end

  private 

  def upvotes 
    votes.where(direction: 'up')
  end

  def downvotes
    votes.where(direction: 'down')
  end

  def comment_upvotes 
    votes.where(direction: 'up')
  end

  def comment_downvotes
    votes.where(direction: 'down')
  end

end


