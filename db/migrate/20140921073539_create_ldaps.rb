class CreateLdaps < ActiveRecord::Migration
  def change
    create_table :ldaps do |t|

      t.timestamps
    end
  end
end
