User.create!(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 admin user created"

User.create!(
  email: "test2@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Regular User",
)

puts "1 admin user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    topic_id: Topic.last.id,
    status: 0
  )
end

puts "10 blog posts created"


Skill.create!(title: "html/css", percent_utilized: 80)
Skill.create!(title: "javascript", percent_utilized: 80)
Skill.create!(title: "ruby", percent_utilized: 68)
Skill.create!(title: "ruby on rails", percent_utilized: 68)
Skill.create!(title: "python", percent_utilized: 85)
