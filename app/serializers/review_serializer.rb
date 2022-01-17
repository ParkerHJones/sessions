class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :session_id
end
