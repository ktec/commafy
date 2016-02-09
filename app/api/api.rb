class API < Grape::API
  format :json
  mount Commafy::Commafy
end
