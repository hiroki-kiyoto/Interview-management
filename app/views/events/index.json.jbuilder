json.array!(@firstinterviews) do |event|
  json.extract! event, :id 
  json.start event.starttime.strftime("%Y-%m-%d %H:%M")
  json.end event.endtime.strftime("%Y-%m-%d %H:%M")
  json.url event_url(event, format: :html) 
end

json.array!(@regularinterviews) do |event|
  json.extract! event, :id 
  json.start event.starttime.strftime("%Y-%m-%d %H:%M")  
  json.end event.endtime.strftime("%Y-%m-%d %H:%M")
  json.url event_url(event, format: :html) 
end



