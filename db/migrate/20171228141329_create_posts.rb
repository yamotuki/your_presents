class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
	# あとで外部キー制約をつけるかもしれない
      t.integer :user_id
      t.string :from
      t.string :to
      t.string :situation
      t.string :item
      t.string :why
      t.string :reaction
      t.integer :success

      t.timestamps
    end
  end
end
