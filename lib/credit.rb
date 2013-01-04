class Credit
  attr_reader :ammount, :description

  def initialize(*args)
    @ammount = args[0][:credit]
    @description = args[0][:description]
    @date = args[0][:date]
  end
end
