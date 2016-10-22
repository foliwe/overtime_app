@user = User.create(email: "test@example.com",
										password: "password",
										password_confirmation: "password",
										first_name: "Jon",
										last_name: "Snow",
										phone: "4322386131")



puts "1 User created"

AdminUser.create(email: "admin@example.com",
									password: "password",
									password_confirmation: "password",
									first_name: "Admin",
									last_name: "Name",
									phone: "4322386131")

puts "1 Admin User created"

50.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end




	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))





puts "3 audit logs have been created"
