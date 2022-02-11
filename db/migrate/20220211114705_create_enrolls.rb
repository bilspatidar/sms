class CreateEnrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :enrolls do |t|
      t.string :refrence
      t.references :student, null: false, foreign_key: true
      t.references :cource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
