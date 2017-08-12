class AddCommentToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :parent, :text
    add_column :cards, :comment, :text
    change_column :cards, :text, :text
  end
end
