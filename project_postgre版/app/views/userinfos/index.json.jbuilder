json.array!(@userinfos) do |userinfo|
  json.extract! userinfo, :id, :name, :age, :idcard
  json.url userinfo_url(userinfo, format: :json)
end
