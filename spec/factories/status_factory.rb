# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :status do |f|
  f.date "2011-03-01"
  f.disappeared_at "2011-03-01T01:01:01Z"
end
