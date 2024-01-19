## Pythonish.jl
Fun Julia Pythonish extension. 

Only the good things from python... :)


## Highlights
- `len`: Python-style length.
- `enum`: Python-style enumeration.

```julia
item_count = len(my_items)       # Python-style enumeration

for (i, item) in enum(my_items)
    # process items
end
```

## Roadmap
- Extend to more Pythonic idioms.
- "1:x"       -> ":x" or ": x"        if it is number... of course we cannot do as it is symbol... maybe ": x" with space
- "x:end"     -> "x:"         
- "x:end-1"   -> "x:-1"     
- Dict creation like "json" with braces: {"val1": 5, "big":[3,4,5]}
But these need more internal modification (also maybe compatibility issues during code parsing can be serious).
