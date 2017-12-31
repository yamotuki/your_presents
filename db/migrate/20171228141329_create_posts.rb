class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
	# あとで外部キー制約をつけるかもしれない
      t.string :situation
      t.string :goods
      t.string :comment

      t.timestamps
    end
  end
end
