class Pokemon

  attr_accessor :id, :name, :type

  @@all = []

  def initialize(id,name,type)
    @id = id
    @name = name
    @type = type
    @@all << self
  end



end
