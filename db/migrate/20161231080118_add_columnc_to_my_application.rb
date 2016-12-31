class AddColumncToMyApplication < ActiveRecord::Migration
  def change
    add_column :my_applications, :position, :string
  end
end
