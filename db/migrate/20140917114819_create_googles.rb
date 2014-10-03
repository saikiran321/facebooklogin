class CreateGoogles < ActiveRecord::Migration
  def change
    create_table :googles do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
