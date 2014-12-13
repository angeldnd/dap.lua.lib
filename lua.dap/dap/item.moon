--  Created by YJ Park on 14/12/01.
--  Copyright (c) 2014年 AngelDnD. All rights reserved.

class Item
    @dap_type = "Item"

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

    fire_event: (channel_path, evt) =>
        return dap.fire_event(@path, channel_path, evt)

    --SILP: ITEM_TYPE(bool, false)
    add_bool: (property_path, value=false) =>                         --__SILP__
        return _dap.add_bool(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    remove_bool: (property_path) =>                                   --__SILP__
        return _dap.remove_bool(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    is_bool: (property_path) =>                                       --__SILP__
        return _dap.if_bool(@path, property_path)                     --__SILP__
                                                                      --__SILP__
    get_bool: (property_path, default_value=false) =>                 --__SILP__
        return _dap.get_bool(@path, property_path, default_value)     --__SILP__
                                                                      --__SILP__
    set_bool: (property_path, value) =>                               --__SILP__
        return _dap.set_bool(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    watch_bool: (property_path) =>                                    --__SILP__
        return _dap.watch_bool(@path, property_path)                  --__SILP__
                                                                      --__SILP__
    unwatch_bool: (property_path) =>                                  --__SILP__
        return _dap.unwatch_bool(@path, property_path)                --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(int, 0)
    add_int: (property_path, value=0) =>                              --__SILP__
        return _dap.add_int(@path, property_path, value)              --__SILP__
                                                                      --__SILP__
    remove_int: (property_path) =>                                    --__SILP__
        return _dap.remove_int(@path, property_path)                  --__SILP__
                                                                      --__SILP__
    is_int: (property_path) =>                                        --__SILP__
        return _dap.if_int(@path, property_path)                      --__SILP__
                                                                      --__SILP__
    get_int: (property_path, default_value=0) =>                      --__SILP__
        return _dap.get_int(@path, property_path, default_value)      --__SILP__
                                                                      --__SILP__
    set_int: (property_path, value) =>                                --__SILP__
        return _dap.set_int(@path, property_path, value)              --__SILP__
                                                                      --__SILP__
    watch_int: (property_path) =>                                     --__SILP__
        return _dap.watch_int(@path, property_path)                   --__SILP__
                                                                      --__SILP__
    unwatch_int: (property_path) =>                                   --__SILP__
        return _dap.unwatch_int(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(long, 0)
    add_long: (property_path, value=0) =>                             --__SILP__
        return _dap.add_long(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    remove_long: (property_path) =>                                   --__SILP__
        return _dap.remove_long(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    is_long: (property_path) =>                                       --__SILP__
        return _dap.if_long(@path, property_path)                     --__SILP__
                                                                      --__SILP__
    get_long: (property_path, default_value=0) =>                     --__SILP__
        return _dap.get_long(@path, property_path, default_value)     --__SILP__
                                                                      --__SILP__
    set_long: (property_path, value) =>                               --__SILP__
        return _dap.set_long(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    watch_long: (property_path) =>                                    --__SILP__
        return _dap.watch_long(@path, property_path)                  --__SILP__
                                                                      --__SILP__
    unwatch_long: (property_path) =>                                  --__SILP__
        return _dap.unwatch_long(@path, property_path)                --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(float, 0)
    add_float: (property_path, value=0) =>                            --__SILP__
        return _dap.add_float(@path, property_path, value)            --__SILP__
                                                                      --__SILP__
    remove_float: (property_path) =>                                  --__SILP__
        return _dap.remove_float(@path, property_path)                --__SILP__
                                                                      --__SILP__
    is_float: (property_path) =>                                      --__SILP__
        return _dap.if_float(@path, property_path)                    --__SILP__
                                                                      --__SILP__
    get_float: (property_path, default_value=0) =>                    --__SILP__
        return _dap.get_float(@path, property_path, default_value)    --__SILP__
                                                                      --__SILP__
    set_float: (property_path, value) =>                              --__SILP__
        return _dap.set_float(@path, property_path, value)            --__SILP__
                                                                      --__SILP__
    watch_float: (property_path) =>                                   --__SILP__
        return _dap.watch_float(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    unwatch_float: (property_path) =>                                 --__SILP__
        return _dap.unwatch_float(@path, property_path)               --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(double, 0)
    add_double: (property_path, value=0) =>                           --__SILP__
        return _dap.add_double(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    remove_double: (property_path) =>                                 --__SILP__
        return _dap.remove_double(@path, property_path)               --__SILP__
                                                                      --__SILP__
    is_double: (property_path) =>                                     --__SILP__
        return _dap.if_double(@path, property_path)                   --__SILP__
                                                                      --__SILP__
    get_double: (property_path, default_value=0) =>                   --__SILP__
        return _dap.get_double(@path, property_path, default_value)   --__SILP__
                                                                      --__SILP__
    set_double: (property_path, value) =>                             --__SILP__
        return _dap.set_double(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    watch_double: (property_path) =>                                  --__SILP__
        return _dap.watch_double(@path, property_path)                --__SILP__
                                                                      --__SILP__
    unwatch_double: (property_path) =>                                --__SILP__
        return _dap.unwatch_double(@path, property_path)              --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(string, "")
    add_string: (property_path, value="") =>                          --__SILP__
        return _dap.add_string(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    remove_string: (property_path) =>                                 --__SILP__
        return _dap.remove_string(@path, property_path)               --__SILP__
                                                                      --__SILP__
    is_string: (property_path) =>                                     --__SILP__
        return _dap.if_string(@path, property_path)                   --__SILP__
                                                                      --__SILP__
    get_string: (property_path, default_value="") =>                  --__SILP__
        return _dap.get_string(@path, property_path, default_value)   --__SILP__
                                                                      --__SILP__
    set_string: (property_path, value) =>                             --__SILP__
        return _dap.set_string(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    watch_string: (property_path) =>                                  --__SILP__
        return _dap.watch_string(@path, property_path)                --__SILP__
                                                                      --__SILP__
    unwatch_string: (property_path) =>                                --__SILP__
        return _dap.unwatch_string(@path, property_path)              --__SILP__
                                                                      --__SILP__

{ :Item }
