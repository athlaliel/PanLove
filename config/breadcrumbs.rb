crumb :root do
  link "Home", root_path
end

# user#index
crumb :users do
  link "Users", users_path
  parent :root
end

# user#show
crumb :show_user do |user|
  link user.name, user
  parent :users
end

# user#edit
crumb :edit_user do |user|
  link "Edit #{user.name}", edit_user_path(user)
  parent :show_user, user
end

# user#new
crumb :new_user do
  link "New User", new_user_path
  parent :users
end

# # マイページ
# crumb :mypage do
#   link "マイページ", user_path
# end

# crumb :edit_user do |user|
#   link "編集", edit_user_registration_path
#   parent :root, user
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).