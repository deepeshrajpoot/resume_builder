json.extract! resume, :id, :name, :email, :contact, :address, :city, :state, :country, :zipcode, :objective, :gender, :date_of_birth, :mother_name, :father_name, :cast, :relegion, :created_at, :updated_at
json.url resume_url(resume, format: :json)
