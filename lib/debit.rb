class Debit
  attr_reader :ammount, :description

  def initialize(*args)
    @ammount = args[0][:debit]
    @description = args[0][:description]
  end
end
