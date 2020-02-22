class AddAnswerToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :answer, :text
  end
end
