@user = User.create(email: "test@test.com",
										password: "asdfasdf",
										password_confirmation: "asdfasdf",
										first_name: "Jon",
										last_name: "Snow",
										phone: "4322386131")


@user1 = User.create(email: "test@example.com",
										password: "password",
										password_confirmation: "password",
										first_name: "Kunta",
										last_name: "Kinte",
										phone: "4322386131")

puts "2 User created"

AdminUser.create(email: "admin@test.com",
									password: "asdfasdf",
									password_confirmation: "asdfasdf",
									first_name: "Admin",
									last_name: "Name",
									phone: "4322386131")

puts "1 Admin User created"

50.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end


50.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user1.id, overtime_request: 2.5)
end


50.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

20.times do |audit_log|
	AuditLog.create!(user_id: @user1.id, status: 0, start_date: (Date.today - 6.days))
end

puts "50 audit logs have been created"
