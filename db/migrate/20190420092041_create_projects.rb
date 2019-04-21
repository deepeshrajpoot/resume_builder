class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :role
      t.string :duration
      t.text :description
      t.string :web_url
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
