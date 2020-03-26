class Pokemon

  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize( id )
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name,type,db)
    sql =<<-SQL
    INSERT INTO pokemon (name, type)
    VALUES (?,?)
    SQL

    db.execute(sql).map do |row|
      self(Row)
    end
  end



end
