class CreateCoverLetters < ActiveRecord::Migration
  def change
    create_table :cover_letters do |t|
      t.integer :my_application_id
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
