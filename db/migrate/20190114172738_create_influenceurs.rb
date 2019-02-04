class CreateInfluenceurs < ActiveRecord::Migration[5.2]
  def change
    create_table :influenceurs do |t|
      t.string :username
      t.string :name
      t.float :follower
      t.float :following
      t.float :engagment
      t.float :like
      t.float :comment

      t.timestamps
    end
  end
end
