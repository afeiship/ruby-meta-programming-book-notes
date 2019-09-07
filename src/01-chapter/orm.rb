class Entity
  attr_reader :table, :ident

  def initialize(table, ident)
    @table = table
    @ident = ident

    Database.sql "insert into #{@table} (id) values (#{@ident})"
  end

  def set(col, val)
    Database.sql "update #{@table} set #{col}='#{val}' wher id = #{@ident}"
  end

  def get(col)
    Database.sql("select #{col} from #{@table} where id=#{@ident}")[0][0]
  end
end

class Movie < Entity
  def initialize(ident)
    super "movies", ident
  end

  def title
    get "title"
  end

  def title=(value)
    set "title", value
  end

  def director
    get "director"
  end

  def director=(value)
    set "director", value
  end
end

# 实际上，有个东西叫 ActiveRecord 做得更加的完美，这个实现有很多的冗余代码
movie = Movie.new
movie.title = "Doctor Stranglelove"
movie.director = "Stanley Kubrik"
