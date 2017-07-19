# Valuation
Elixir Tools based on McKinsey's Valuation book: https://www.amazon.com/Valuation-Course-Introductory-Measuring-Companies/dp/1118988264

## Why?
I am currently learning Elixir and I am also learning more about financial modelling and value investing, so I figured this was a great time to combine them together! Plus I keep going back to these tools to try applying some of the things that I've learned on real world analysis.

## Examples
To calculate the value of a single share of a stock, you can look up the dividend that it pays quarterly (e.g. http://marketwatch.com/investing/stock/irm will show you $0.55 as of the writing of this example). You can then multiply it by 4 to get the annual cash flow of one share of the business. You then also have to make an estimate on the Weighted Average Cost of Capital (WACC) across the lifetime of your investment - however long you intend to hold it for. Interest rates are low right now, but I personally wouldn't expect them to stay low - so I've been playing around with a 5% lifetime WACC.

```
iex value.exs

iex(1)> Company.evaluate(0.05, 0.55*4)
43.79
```

This indicates that for $0.55 per quarter dividends and a 5% WACC, the business as it stands would be worth $43.79. This assumes zero growth and zero loss of market (no change in cash flow / dividends) and that our WACC is accurate.

Given that the current price of the stock (as of this writing) is around $34.75, this means that market has factored in either a higher WACC or a else significant risk to the business's ability to maintain its current cash flow.
