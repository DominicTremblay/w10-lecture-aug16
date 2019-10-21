class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_url
      t.string :director
      t.string :description
      t.date :release_date
      t.integer :runtime_in_minutes

      t.timestamps
    end
  end
end
