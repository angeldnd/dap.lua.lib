export dap = {}

add_submodule = (submodule using dap) ->
    for k, v in pairs submodule
        dap[k] = v

add_submodule require "dap.registry"
add_submodule require "dap.item"

return dap
