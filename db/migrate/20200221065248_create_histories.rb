class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.text :question
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
