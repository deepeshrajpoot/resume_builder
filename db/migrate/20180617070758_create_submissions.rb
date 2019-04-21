class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.references :user, foreign_key: true
      t.references :basic_form, foreign_key: true

      t.timestamps
    end
  end
end
