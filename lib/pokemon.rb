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

    db.execute(sql).map do |row|
      self.new(Row)
    end
  end



end
