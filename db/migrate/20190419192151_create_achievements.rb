class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.text :title
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
