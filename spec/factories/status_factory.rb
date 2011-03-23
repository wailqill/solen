# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :status do |f|
  f.date
  f.disappeared_at
end

Factory.define :status_today, :class => :status do |f|
  noon = Chronic.parse('today at noon')
  f.date Date.today
  f.disappeared_at noon
  f.position1 1.hour.since(noon)
  f.position2 2.hours.since(noon)
  f.position3 3.hours.since(noon)
end
