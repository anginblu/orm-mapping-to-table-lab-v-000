class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade, :id
  @@all = []

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @@all << self
  end

  def 

end
