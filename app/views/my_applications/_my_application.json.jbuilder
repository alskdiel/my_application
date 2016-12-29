json.extract! my_application, :id, :type, :company, :applied_date, :released_date, :result, :created_at, :updated_at
json.url my_application_url(my_application, format: :json)