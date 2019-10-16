class UserRanking < ActiveRecord::Base
  belongs_to :user_rankings, polymorphic: true
end