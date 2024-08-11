class CreateSiteReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :site_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :site, null: false, foreign_key: true
      t.string :review

      t.timestamps
    end
  end
end
