defmodule Company do
  def evaluate(wacc, cf, year \\ 1, value \\ 0.0) do
    delta = cf / :math.pow(1 + wacc, year)
    if delta >= 0.01 do
      evaluate(wacc, cf, year + 1, value + delta)
    else
      Float.round(value, 2)
    end
  end
end

