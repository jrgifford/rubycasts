Shoes.app :title => "A styling Sample" do
  @text = para "Red with an underline"
  @text.style(:stroke => red, :underline => "single")
  
  @bluetext = para "Blue without an underline"
  @bluetext.style(:stroke => blue)
end

