defmodule Hello do
  def fizz_buzz(times) when times <= 1 do
    IO.puts times
    IO.puts "finish"
  end

  def fizz_buzz(times) do

    cond do
      rem(times,15) == 0
        -> IO.puts "FizzBuzz"

      rem(times,3) == 0
        -> IO.puts "Fizz"

      rem(times,5) == 0
        -> IO.puts "Buzz"

      true -> IO.puts times
    end

    fizz_buzz(times-1)
  end
end
