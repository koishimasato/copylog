class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :url
      t.string :text

      t.timestamps
    end
  end
end
