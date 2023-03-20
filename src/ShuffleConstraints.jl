module ShuffleConstraints

using JuMP
using MathOptInterface
const MOI = MathOptInterface
using Random

import Random.shuffle!
import Random.shuffle
export shuffle!
export shuffle

include("utils.jl")
include("shuffle.jl")

end # module
