function shuffle!(model::Model;
                  merge_inequalities::Bool=false,
    )
    #
    constraints = all_constraints_affexpr(model) #AffExpr
    shuffle!(constraints)
    for constraint in constraints
        copy_constraint_at_the_end(model, constraint, to_LessThan=merge_inequalities)
    end

    return model
end

function shuffle(model::Model; kwargs...)
    new_model = copy(model)
    sort!(new_model; kwargs...)
    return new_model
end
