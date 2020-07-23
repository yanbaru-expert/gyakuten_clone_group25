EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end
# 管理者画面
AdminUser.find_or_create_by!(email: 'test@example.com') do |user|
  user.password = "password"
  password_confirmation = 'password'
end