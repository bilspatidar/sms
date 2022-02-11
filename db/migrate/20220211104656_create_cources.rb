class CreateCources < ActiveRecord::Migration[7.0]
  def change
    create_table :cources do |t|
      t.string :title
      t.string :duration
      t.string :fee
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
