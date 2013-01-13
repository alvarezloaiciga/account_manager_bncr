Gem::Specification.new do |s|
  s.name = 'account-manager-bncr'
  s.version = '0.0.0'
  s.date = '2013-01-13'
  s.summary = 'Account Manager BNCR'
  s.description = 'A Gem for parsing BNCR\'s CSVs'
  s.authors = ["Jose Andres Alvarez"]
  s.email = 'alvarezloaiciga@gmail.com'
  s.files = Dir.glob('lib/**/*.rb') + ["csvs/saldos1.csv"]
  s.require_path = 'lib'
  s.test_files = Dir.glob('spec/*_spec.rb')
end
