class CreateAcademicCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :academic_credentials do |t|
      t.string :course
      t.string :year
      t.string :percentage
      t.string :grade
      t.string :board_or_univercity
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
