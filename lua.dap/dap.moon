--  Created by YJ Park on 14/12/01.
--  Copyright (c) 2014年 AngelDnD. All rights reserved.

export dap = {}

add_submodule = (submodule using dap) ->
    for k, v in pairs submodule
        dap[k] = v

add_submodule require "dap.utils"
add_submodule require "dap.registry"
add_submodule require "dap.item"

return dap
