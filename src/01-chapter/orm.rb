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
