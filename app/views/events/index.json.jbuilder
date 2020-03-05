json.array!(@firstinterviews) do |event|
  json.start event.starttime.strftime("%Y-%m-%d %H:%M")
  json.end event.endtime.strftime("%Y-%m-%d %H:%M")
end

json.array!(@regularinterviews) do |event|
  json.start event.starttime.strftime("%Y-%m-%d %H:%M")  
  json.end event.endtime.strftime("%Y-%m-%d %H:%M")
  
end



