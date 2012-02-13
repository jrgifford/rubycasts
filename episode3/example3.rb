Shoes.app :title => "A Styling Sample" do # very stylish indeed
  @text = para "Red with an underline"
  @text.style(:stroke => red, :underline => "single")
  @text2 = para "blue"
  @text2.style(:stroke => blue)
end
