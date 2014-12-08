class Item
    new: (path) =>
        @path = path
        @request_handlers = {}

        @event_listeners = {}
        @request_listeners = {}
        @response_listeners = {}

        @bool_listeners = {}
        @int_listeners = {}
        @long_listeners = {}
        @float_listeners = {}
        @double_listeners = {}
        @string_listeners = {}

    fire_event: (channelPath, evt) =>
        return dap.fire_event(@path, channelPath, evt)

    --SILP: ITEM_TYPE(bool, false)
    add_bool: (propertyPath, value=false) =>                          --__SILP__
        return _dap.add_bool(@path, propertyPath, value)              --__SILP__
                                                                      --__SILP__
    remove_bool: (propertyPath) =>                                    --__SILP__
        return _dap.remove_bool(@path, propertyPath)                  --__SILP__
                                                                      --__SILP__
    is_bool: (propertyPath) =>                                        --__SILP__
        return _dap.if_bool(@path, propertyPath)                      --__SILP__
                                                                      --__SILP__
    get_bool: (propertyPath, defaultValue=false) =>                   --__SILP__
        return _dap.get_bool(@path, propertyPath, defaultValue)       --__SILP__
                                                                      --__SILP__
    set_bool: (propertyPath, value) =>                                --__SILP__
        return _dap.set_bool(@path, propertyPath, value)              --__SILP__
                                                                      --__SILP__
    watch_bool: (propertyPath) =>                                     --__SILP__
        return _dap.watch_bool(@path, propertyPath)                   --__SILP__
                                                                      --__SILP__
    unwatch_bool: (propertyPath) =>                                   --__SILP__
        return _dap.unwatch_bool(@path, propertyPath)                 --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(int, 0)
    add_int: (propertyPath, value=0) =>                               --__SILP__
        return _dap.add_int(@path, propertyPath, value)               --__SILP__
                                                                      --__SILP__
    remove_int: (propertyPath) =>                                     --__SILP__
        return _dap.remove_int(@path, propertyPath)                   --__SILP__
                                                                      --__SILP__
    is_int: (propertyPath) =>                                         --__SILP__
        return _dap.if_int(@path, propertyPath)                       --__SILP__
                                                                      --__SILP__
    get_int: (propertyPath, defaultValue=0) =>                        --__SILP__
        return _dap.get_int(@path, propertyPath, defaultValue)        --__SILP__
                                                                      --__SILP__
    set_int: (propertyPath, value) =>                                 --__SILP__
        return _dap.set_int(@path, propertyPath, value)               --__SILP__
                                                                      --__SILP__
    watch_int: (propertyPath) =>                                      --__SILP__
        return _dap.watch_int(@path, propertyPath)                    --__SILP__
                                                                      --__SILP__
    unwatch_int: (propertyPath) =>                                    --__SILP__
        return _dap.unwatch_int(@path, propertyPath)                  --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(long, 0)
    add_long: (propertyPath, value=0) =>                              --__SILP__
        return _dap.add_long(@path, propertyPath, value)              --__SILP__
                                                                      --__SILP__
    remove_long: (propertyPath) =>                                    --__SILP__
        return _dap.remove_long(@path, propertyPath)                  --__SILP__
                                                                      --__SILP__
    is_long: (propertyPath) =>                                        --__SILP__
        return _dap.if_long(@path, propertyPath)                      --__SILP__
                                                                      --__SILP__
    get_long: (propertyPath, defaultValue=0) =>                       --__SILP__
        return _dap.get_long(@path, propertyPath, defaultValue)       --__SILP__
                                                                      --__SILP__
    set_long: (propertyPath, value) =>                                --__SILP__
        return _dap.set_long(@path, propertyPath, value)              --__SILP__
                                                                      --__SILP__
    watch_long: (propertyPath) =>                                     --__SILP__
        return _dap.watch_long(@path, propertyPath)                   --__SILP__
                                                                      --__SILP__
    unwatch_long: (propertyPath) =>                                   --__SILP__
        return _dap.unwatch_long(@path, propertyPath)                 --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(float, 0)
    add_float: (propertyPath, value=0) =>                             --__SILP__
        return _dap.add_float(@path, propertyPath, value)             --__SILP__
                                                                      --__SILP__
    remove_float: (propertyPath) =>                                   --__SILP__
        return _dap.remove_float(@path, propertyPath)                 --__SILP__
                                                                      --__SILP__
    is_float: (propertyPath) =>                                       --__SILP__
        return _dap.if_float(@path, propertyPath)                     --__SILP__
                                                                      --__SILP__
    get_float: (propertyPath, defaultValue=0) =>                      --__SILP__
        return _dap.get_float(@path, propertyPath, defaultValue)      --__SILP__
                                                                      --__SILP__
    set_float: (propertyPath, value) =>                               --__SILP__
        return _dap.set_float(@path, propertyPath, value)             --__SILP__
                                                                      --__SILP__
    watch_float: (propertyPath) =>                                    --__SILP__
        return _dap.watch_float(@path, propertyPath)                  --__SILP__
                                                                      --__SILP__
    unwatch_float: (propertyPath) =>                                  --__SILP__
        return _dap.unwatch_float(@path, propertyPath)                --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(double, 0)
    add_double: (propertyPath, value=0) =>                            --__SILP__
        return _dap.add_double(@path, propertyPath, value)            --__SILP__
                                                                      --__SILP__
    remove_double: (propertyPath) =>                                  --__SILP__
        return _dap.remove_double(@path, propertyPath)                --__SILP__
                                                                      --__SILP__
    is_double: (propertyPath) =>                                      --__SILP__
        return _dap.if_double(@path, propertyPath)                    --__SILP__
                                                                      --__SILP__
    get_double: (propertyPath, defaultValue=0) =>                     --__SILP__
        return _dap.get_double(@path, propertyPath, defaultValue)     --__SILP__
                                                                      --__SILP__
    set_double: (propertyPath, value) =>                              --__SILP__
        return _dap.set_double(@path, propertyPath, value)            --__SILP__
                                                                      --__SILP__
    watch_double: (propertyPath) =>                                   --__SILP__
        return _dap.watch_double(@path, propertyPath)                 --__SILP__
                                                                      --__SILP__
    unwatch_double: (propertyPath) =>                                 --__SILP__
        return _dap.unwatch_double(@path, propertyPath)               --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(string, "")
    add_string: (propertyPath, value="") =>                           --__SILP__
        return _dap.add_string(@path, propertyPath, value)            --__SILP__
                                                                      --__SILP__
    remove_string: (propertyPath) =>                                  --__SILP__
        return _dap.remove_string(@path, propertyPath)                --__SILP__
                                                                      --__SILP__
    is_string: (propertyPath) =>                                      --__SILP__
        return _dap.if_string(@path, propertyPath)                    --__SILP__
                                                                      --__SILP__
    get_string: (propertyPath, defaultValue="") =>                    --__SILP__
        return _dap.get_string(@path, propertyPath, defaultValue)     --__SILP__
                                                                      --__SILP__
    set_string: (propertyPath, value) =>                              --__SILP__
        return _dap.set_string(@path, propertyPath, value)            --__SILP__
                                                                      --__SILP__
    watch_string: (propertyPath) =>                                   --__SILP__
        return _dap.watch_string(@path, propertyPath)                 --__SILP__
                                                                      --__SILP__
    unwatch_string: (propertyPath) =>                                 --__SILP__
        return _dap.unwatch_string(@path, propertyPath)               --__SILP__
                                                                      --__SILP__

{ :Item }
