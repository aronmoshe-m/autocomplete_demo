json.array! @users do |user|
  json.id user.id
  json.fname user.fname
  json.lname user.lname
  json.domain user.domain
end