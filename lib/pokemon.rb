class Pokemon

  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize( id )
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save
    @@all << self 
  end



end
