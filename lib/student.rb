class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade
  attr_reader :id
  @@all = []

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @@all << self
  end

  def self.create_table
      sql =  <<-SQL
        CREATE TABLE IF NOT EXISTS students (
          id INTEGER PRIMARY KEY,
          name TEXT,
          grade TEXT
          )
          SQL
      DB[:conn].execute(sql)
  end

  self.drop_table
  

  def save
    sql = <<-SQL
      INSERT INTO songs (name, album)
      VALUES (?, ?)
      SQL

      DB[:conn].execute(sql, self.name, self.album)
  end


end
