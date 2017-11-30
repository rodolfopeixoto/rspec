class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "Felling Happy!"
  end

  def said!
    @status = "Felling Said!"
  end

  def content!
    @status = "Felling Content!"
  end
end