# Recursion

- Recursion problems generally follow this pattern

```ruby
def function_name(param1, param2,..., paramn)
  # base case or the exit criteria
  # a unit of work
  #   this is a set of steps which works on the problem at hand
  #   that does one unit of work
  # call the same function_name again exluding the unit of work done
end
```

- If I think about it any problem where a loop is involved can be done with recursion.

