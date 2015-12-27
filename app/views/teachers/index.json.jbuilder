json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :age, :course
  json.url teacher_url(teacher, format: :json)
end
