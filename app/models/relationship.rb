class Relationship < ApplicationRecord
	belongs_to :follower, class_name: "User"
    belongs_to :followed, class_name: "User"

	validate :hoge

	def hoge
		if follower_id == followed_id
		   errors.add(:followed_id, "自分をフォロできません")
	    end
	end

end

#Relationship
#id | follower_id | followed_id
# 1 | 1 | 2
# 2 | 1 | 1
# 3 | 2 | 1   
# 4 | 2 | 2 