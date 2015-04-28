json.array!(@events) do |event|
  json.extract! event, :id, :title
  json.start event.start_time
  json.end event.end_time
  
  if event.event_type == 1
    json.backgroundColor "#0000ff"
    json.borderColor "#0000CC"
  end
  if event.event_type == 2 
    json.backgroundColor "#ff0000"
    json.borderColor "#CC0000"
  end 
  if event.event_type == 3
    json.backgroundColor "#009900"
    json.borderColor "#009933"
  end 
  if event.event_type == 4 
    json.backgroundColor "#FFCC00"
    json.borderColor "#FFFF00" 
  end 
  if event.event_type == 5 
    json.backgroundColor "#FF9900"
    json.borderColor "#FF6600"
  end 
  
  json.url event_url(event, format: :html)
end
