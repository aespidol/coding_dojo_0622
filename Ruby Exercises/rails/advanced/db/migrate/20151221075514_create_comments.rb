class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :imageable, polymorphic: true, index: true
      t.string :comment

      t.timestamps
    end
  end
end
