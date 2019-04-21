class AddImageToResume < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :image, :string
  end
end
