class CreateRouteNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :route_notes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
