class AddResumeIdToSkill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :resume_id, :integer
  end
end
