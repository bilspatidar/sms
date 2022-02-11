class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :fullname
      t.string :mobile
      t.string :email
      t.string :dob
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
