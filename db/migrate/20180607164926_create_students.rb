class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :learn
      t.string :location
      t.integer :mobile_number, :limit => 16

      t.timestamps null: false
    end
  end
end
