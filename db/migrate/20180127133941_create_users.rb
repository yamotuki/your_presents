class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :provider_uid
      t.string :nickname
      t.string :image_uri

      t.timestamps
    end
  end
end
