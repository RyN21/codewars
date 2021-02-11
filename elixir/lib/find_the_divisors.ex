# MY SOLUTION
#=======================================================================================

defmodule FindTheDivisors do
  def divisors(integer) do
    # Your code here
  end
end


# BEST PRACTICE  &&  CLEVER
#=======================================================================================

defmodule FindTheDivisors do
  def divisors(integer) do
    divs = for n <- 2..integer-1, rem(integer, n) == 0, do: n
    case divs do
      [] -> "#{integer} is prime"
      _ -> divs
    end
  end
end
require 'pry'


# ALTERNATIVE
#=======================================================================================

defmodule FindTheDivisors do
  def divisors(integer) do
    case 2..(integer - 1)
         |> Enum.filter(fn n -> Integer.mod(integer, n) == 0 end) do
      [] ->
        "#{integer} is prime"

      divisors ->
        divisors
    end
  end
end


# ALTERNATIVE
#=======================================================================================

defmodule FindTheDivisors do
  def divisors(integer) do
    # Your code here
    divisors(integer, integer - 1, [])
  end

  def divisors(integer, 1, []), do: "#{integer} is prime"

  def divisors(_, 1, arr), do: arr

  def divisors(integer, cur, arr) when rem(integer, cur) == 0 do
    divisors(integer, cur - 1, [cur | arr])
  end

  def divisors(integer, cur, arr) do
    divisors(integer, cur - 1, arr)
  end
end
