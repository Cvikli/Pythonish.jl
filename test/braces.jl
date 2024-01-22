println("okd")


function getargs(ex::Expr, idx)
	@show ex
	@show idx
	# exarg = getfield(ex, :args) # args array
	# length(idx) == 1 ? getindex(exarg, idx[1]) :
			# getargs(exarg[idx[1]], idx[2:end])
end
println("o2kd")
a=6
println(Meta.@lower { a; a })
println("o2kd3f2")
println(Meta.@lower [5] |> {a})
println(Meta.@lower {})
println("okd2")

# https://github.com/ianqsong/Pipebraces.jl
# 
# igazából a Base.... valami egész cuccot felüldefiniál egy _init_... függvényben várhatóan
# 
#%%

# Python-style length
item_count = len(my_array)

# Python-style enumeration
for (i, item) in enum(my_items)
    # process items
end


#%%


@dict {"a": :b, 'c': 1, :d: 2.0}