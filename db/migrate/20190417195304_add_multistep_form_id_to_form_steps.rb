class AddMultistepFormIdToFormSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :form_steps, :multistep_form_id, :integer
  end
end
