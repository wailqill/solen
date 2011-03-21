# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :status do |f|
  f.date
  f.disappeared_at
end

Factory.define :status_today, :class => :status do |f|
  f.date Date.today
  f.disappeared_at Chronic.parse('today at noon')
end
