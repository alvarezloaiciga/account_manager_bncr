require 'csv'
require 'date'

class CSVParser

  def initialize csv_file, listener
    account_summary = parse_account_summary(csv_file)
    listener.send :account_summary_created , account_summary
  end

  private

  def parse_account_summary file
    account_summary = []
    CSV.read(file)[1..-2].each do |move|
      account_summary << parse_account_move(format_move move)
    end
    account_summary
  end

  def format_move move
     move = move.join.split(';')
  end

  def parse_account_move move
    {
      office: move[0].to_i,
      date: move[1],
      document: move[2].to_i,
      credit: move[3].to_f,
      debit: move[4].to_f,
      description: move[5].strip
    }
  end
end

