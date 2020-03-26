class Pokemon

  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id:,name:,type:,db:)
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

    db.execute(sql, name, type)
  end

  def self.find(name, type, db)
    sql =<<-SQL
    SELECT *
    FROM pokemon
    SQL

    db.execute(sql, name, type)
  end



end
