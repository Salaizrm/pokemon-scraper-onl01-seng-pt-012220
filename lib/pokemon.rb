class Pokemon

  attr_writer :id, :name, :type, :db

  @@all = []

  def initialize (id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end



end
