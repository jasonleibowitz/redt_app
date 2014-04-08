class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :vote
      t.references :user
      t.references :link
      t.timestamps
    end
  end
end
