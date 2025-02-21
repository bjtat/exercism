=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

module EliudsEggs
  def self.egg_count(eggs_dec)
    eggs_dec.to_s(2).count('1')
  end
end
