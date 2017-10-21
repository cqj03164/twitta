class Twittum < ActiveRecord::Base
    validates :tweeter, presence: true
    validates :tweet, length: { in: 1..140 } 

end
