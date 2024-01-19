module Pythonish

export len
export enum

@inline len(a) = length(a)     
@inline enum(x) = enumerate(x)

# TODO
# - "1:x"       -> ":x" or ": x"        if it is number... of course we cannot do as it is symbol... maybe ": x" with space
# - "x:end"     -> "x:"         
# - "x:end-1"   -> "x:-1"     
# - Dict creation like "json" with braces: {"val1": 5, "big":[3,4,5]}

end # module Pythonish
