module Pythonish

export len
export enum

@inline len(a) = length(a)     
@inline enum(x) = enumerate(x)

# copied: https://riptutorial.com/julia-lang/example/30150/python--dict--json-like-syntax-for--dict--literals-
macro dict(expr)
	# Check the expression has the correct form:
	if expr.head ≠ :cell1d || any(sub_expr.head ≠ :(:) for sub_expr ∈ expr.args);	error("syntax: expected `{k₁: v₁, k₂: v₂, …, kₙ₋₁: vₙ₋₁, kₙ: vₙ}`"); end

	block = Expr(:call, :Dict)         # :(Dict()) # Create empty `:Dict` expression which will be returned:
	for pair in expr.args              # Append `(key => value)` pairs to the block:
			k, v = pair.args
			push!(block.args, :($k => $v))
	end

	return esc(block)                  # Block is escaped so it can reach variables from it's calling scope:
end

end # module Pythonish
