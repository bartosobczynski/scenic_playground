class CreateUserRankings < ActiveRecord::Migration[5.2]
  def change
    create_view :user_rankings
  end
end
