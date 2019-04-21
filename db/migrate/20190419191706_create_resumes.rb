class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.text :objective
      t.string :gender
      t.date :date_of_birth
      t.string :mother_name
      t.string :father_name
      t.string :cast
      t.string :relegion

      t.timestamps
    end
  end
end
