# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190421073123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_credentials", force: :cascade do |t|
    t.string "course"
    t.string "year"
    t.string "percentage"
    t.string "grade"
    t.string "board_or_univercity"
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_academic_credentials_on_resume_id"
  end

  create_table "achievements", force: :cascade do |t|
    t.text "title"
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_achievements_on_resume_id"
  end

  create_table "basic_forms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_multistep_form"
  end

  create_table "block_fields", force: :cascade do |t|
    t.string "taggable_type"
    t.string "taggable_id"
    t.string "name"
    t.boolean "is_required"
    t.string "default_value"
    t.string "field_type"
    t.string "image"
    t.string "video"
    t.string "label"
    t.string "helptext"
    t.bigint "block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_block_fields_on_block_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.string "order"
    t.bigint "custom_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["custom_form_id"], name: "index_blocks_on_custom_form_id"
  end

  create_table "checkbox_options", force: :cascade do |t|
    t.string "option"
    t.bigint "checkbox_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checkbox_question_id"], name: "index_checkbox_options_on_checkbox_question_id"
  end

  create_table "checkbox_questions", force: :cascade do |t|
    t.string "question"
    t.bigint "feedback_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_required"
    t.integer "form_step_id"
    t.integer "priority"
    t.bigint "basic_form_id"
    t.index ["basic_form_id"], name: "index_checkbox_questions_on_basic_form_id"
    t.index ["feedback_form_id"], name: "index_checkbox_questions_on_feedback_form_id"
  end

  create_table "custom_forms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dropdown_options", force: :cascade do |t|
    t.string "option"
    t.bigint "dropdown_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dropdown_id"], name: "index_dropdown_options_on_dropdown_id"
  end

  create_table "dropdowns", force: :cascade do |t|
    t.string "title"
    t.bigint "feedback_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "form_step_id"
    t.bigint "basic_form_id"
    t.integer "priority"
    t.index ["basic_form_id"], name: "index_dropdowns_on_basic_form_id"
    t.index ["feedback_form_id"], name: "index_dropdowns_on_feedback_form_id"
  end

  create_table "feedback_forms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_blocks", force: :cascade do |t|
    t.string "label"
    t.string "field_type"
    t.boolean "is_required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "form_step_id"
    t.integer "priority"
    t.string "placeholder_text"
    t.string "block_description"
    t.bigint "basic_form_id"
    t.index ["basic_form_id"], name: "index_form_blocks_on_basic_form_id"
    t.index ["form_step_id"], name: "index_form_blocks_on_form_step_id"
  end

  create_table "form_fields", force: :cascade do |t|
    t.string "label"
    t.string "tag"
    t.boolean "is_required"
    t.bigint "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_fields_on_form_id"
  end

  create_table "form_steps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "step_number"
    t.string "name"
    t.bigint "basic_form_id"
    t.integer "multistep_form_id"
    t.index ["basic_form_id"], name: "index_form_steps_on_basic_form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "is_published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resume_id"
  end

  create_table "level_one_conditions", force: :cascade do |t|
    t.string "conditional_question"
    t.string "conditional_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "conditionable_type"
    t.integer "conditionable_id"
  end

  create_table "mcq_options", force: :cascade do |t|
    t.string "option"
    t.bigint "multiple_choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multiple_choice_id"], name: "index_mcq_options_on_multiple_choice_id"
  end

  create_table "multiple_choices", force: :cascade do |t|
    t.string "question"
    t.bigint "feedback_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_required"
    t.integer "form_step_id"
    t.integer "priority"
    t.bigint "basic_form_id"
    t.index ["basic_form_id"], name: "index_multiple_choices_on_basic_form_id"
    t.index ["feedback_form_id"], name: "index_multiple_choices_on_feedback_form_id"
  end

  create_table "multistep_forms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paragraph_questions", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.bigint "feedback_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_required"
    t.index ["feedback_form_id"], name: "index_paragraph_questions_on_feedback_form_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "role"
    t.string "duration"
    t.text "description"
    t.string "web_url"
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_projects_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zipcode"
    t.text "objective"
    t.string "gender"
    t.date "date_of_birth"
    t.string "mother_name"
    t.string "father_name"
    t.string "cast"
    t.string "relegion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "short_questions", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.bigint "feedback_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_required"
    t.index ["feedback_form_id"], name: "index_short_questions_on_feedback_form_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resume_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "basic_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "form_values", default: "{}", null: false
    t.bigint "multistep_form_id"
    t.integer "steps_completed", default: 0, null: false
    t.index ["basic_form_id"], name: "index_submissions_on_basic_form_id"
    t.index ["multistep_form_id"], name: "index_submissions_on_multistep_form_id"
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_field_values", force: :cascade do |t|
    t.string "value"
    t.bigint "user_id"
    t.bigint "form_block_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_block_id"], name: "index_user_field_values_on_form_block_id"
    t.index ["user_id"], name: "index_user_field_values_on_user_id"
  end

  create_table "user_response_values", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "form_block_id"
    t.string "form_block_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "submission_id"
    t.index ["form_block_id"], name: "index_user_response_values_on_form_block_id"
    t.index ["user_id"], name: "index_user_response_values_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "academic_credentials", "resumes"
  add_foreign_key "achievements", "resumes"
  add_foreign_key "block_fields", "blocks"
  add_foreign_key "blocks", "custom_forms"
  add_foreign_key "checkbox_options", "checkbox_questions"
  add_foreign_key "checkbox_questions", "basic_forms"
  add_foreign_key "checkbox_questions", "feedback_forms"
  add_foreign_key "dropdown_options", "dropdowns"
  add_foreign_key "dropdowns", "basic_forms"
  add_foreign_key "dropdowns", "feedback_forms"
  add_foreign_key "form_blocks", "basic_forms"
  add_foreign_key "form_blocks", "form_steps"
  add_foreign_key "form_fields", "forms"
  add_foreign_key "form_steps", "basic_forms"
  add_foreign_key "mcq_options", "multiple_choices"
  add_foreign_key "multiple_choices", "basic_forms"
  add_foreign_key "multiple_choices", "feedback_forms"
  add_foreign_key "paragraph_questions", "feedback_forms"
  add_foreign_key "projects", "resumes"
  add_foreign_key "resumes", "users"
  add_foreign_key "short_questions", "feedback_forms"
  add_foreign_key "submissions", "basic_forms"
  add_foreign_key "submissions", "multistep_forms"
  add_foreign_key "submissions", "users"
  add_foreign_key "user_field_values", "form_blocks"
  add_foreign_key "user_field_values", "users"
  add_foreign_key "user_response_values", "form_blocks"
  add_foreign_key "user_response_values", "users"
end
