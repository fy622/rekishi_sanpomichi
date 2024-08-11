class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.float :distance
      t.float :time

      t.timestamps
    end
  end
end
