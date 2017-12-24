def fizz_buzz(number)
    if number % 15 == 0
        'Fizz Buzz'
    elsif number % 3 == 0
        'Fizz'
    elsif number % 5 == 0
        'Buzz'
    else
        number.to_s
    end
end

require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
    def test_fizz_buzz
        assert_equal '1', fizz_buzz(1)
        assert_equal '2', fizz_buzz(2)
        assert_equal 'Fizz', fizz_buzz(3)
    end
end