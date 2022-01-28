def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  attribute = attributes.nil? ? nil : "#{attributes.first}=\"#{attributes.last}\""
  open_tag = attributes.nil? ? tag_name : "#{tag_name} #{attribute}"
  "<#{open_tag}>#{yield}</#{tag_name}>"
end
