class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string      :name
      t.text        :text
      t.text        :image
      t.integer     :user_id
      t.timestamps
    end
  end
end
