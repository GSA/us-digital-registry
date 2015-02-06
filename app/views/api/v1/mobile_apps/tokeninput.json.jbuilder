json.array! @items do |item|
  if item.class == Service
    json.set! :key, "service&&&#{item.shortname}"
    json.set! :name, "Service: #{item.longname}"
  elsif item.class == Agency
    json.set! :key, "agency&&&#{item.id}"
    json.set! :name, "Agency: #{item.name}"
  elsif item.class == OfficialTag
    json.set! :key, "tag&&&#{item.id}"
    json.set! :name, "Tag: #{item.tag_text}"
  else
    json.set! :key, "text&&&#{item}"
    json.set! :name, "Text: #{item}"
  end

end 