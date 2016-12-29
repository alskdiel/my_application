class CreateMyApplications < ActiveRecord::Migration
  def change
    create_table :my_applications do |t|
      t.integer :apply_type
      t.string :company
      t.datetime :applied_date
      t.datetime :released_date
      t.boolean :result

      t.timestamps null: false
    end
  end
end
