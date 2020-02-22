class RemoveAnswerFromHistories < ActiveRecord::Migration[5.2]
  def change
    remove_column :histories, :answer, :text
  end
end
