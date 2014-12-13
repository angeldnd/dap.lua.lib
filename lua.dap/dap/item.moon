--  Created by YJ Park on 14/12/01.
--  Copyright (c) 2014年 AngelDnD. All rights reserved.

class Item
    @dap_type = "Item"

    new: (path) =>
        @path = path
        @request_handlers = {}

        @event_watchers = {}
        @request_watchers = {}
        @response_watchers = {}

        @bool_watchers = {}
        @int_watchers = {}
        @long_watchers = {}
        @float_watchers = {}
        @double_watchers = {}
        @string_watchers = {}

    fire_event: (channel_path, evt) =>
        return dap.fire_event(@path, channel_path, evt)

    --SILP: ITEM_TYPE(bool, false)
    add_bool: (property_path, value=false) ->                         --__SILP__
        return _dap.add_bool(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    remove_bool: (property_path) ->                                   --__SILP__
        return _dap.remove_bool(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    is_bool: (property_path) ->                                       --__SILP__
        return _dap.if_bool(@path, property_path)                     --__SILP__
                                                                      --__SILP__
    get_bool: (property_path, default_value=false) ->                 --__SILP__
        return _dap.get_bool(@path, property_path, default_value)     --__SILP__
                                                                      --__SILP__
    set_bool: (property_path, value) ->                               --__SILP__
        return _dap.set_bool(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    add_bool_watcher: (property_path, watcher) ->                     --__SILP__
        i = get_index(_bool_watchers)                                 --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_bool_watchers, watcher)                     --__SILP__
            if #_bool_watchers == 1                                   --__SILP__
                _dap.watch_bool(@path, property_path)                 --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_bool_watcher: (property_path, watcher) ->                  --__SILP__
        i = get_index(_bool_watchers)                                 --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_bool_watchers, watcher)                     --__SILP__
            if #_bool_watchers == 0                                   --__SILP__
                _dap.unwatch_bool(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_bool_changed: (property_path, last_value, value) ->           --__SILP__
        for watcher in *_bool_watchers                                --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(int, 0)
    add_int: (property_path, value=0) ->                              --__SILP__
        return _dap.add_int(@path, property_path, value)              --__SILP__
                                                                      --__SILP__
    remove_int: (property_path) ->                                    --__SILP__
        return _dap.remove_int(@path, property_path)                  --__SILP__
                                                                      --__SILP__
    is_int: (property_path) ->                                        --__SILP__
        return _dap.if_int(@path, property_path)                      --__SILP__
                                                                      --__SILP__
    get_int: (property_path, default_value=0) ->                      --__SILP__
        return _dap.get_int(@path, property_path, default_value)      --__SILP__
                                                                      --__SILP__
    set_int: (property_path, value) ->                                --__SILP__
        return _dap.set_int(@path, property_path, value)              --__SILP__
                                                                      --__SILP__
    add_int_watcher: (property_path, watcher) ->                      --__SILP__
        i = get_index(_int_watchers)                                  --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_int_watchers, watcher)                      --__SILP__
            if #_int_watchers == 1                                    --__SILP__
                _dap.watch_int(@path, property_path)                  --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_int_watcher: (property_path, watcher) ->                   --__SILP__
        i = get_index(_int_watchers)                                  --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_int_watchers, watcher)                      --__SILP__
            if #_int_watchers == 0                                    --__SILP__
                _dap.unwatch_int(@path, property_path)                --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_int_changed: (property_path, last_value, value) ->            --__SILP__
        for watcher in *_int_watchers                                 --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(long, 0)
    add_long: (property_path, value=0) ->                             --__SILP__
        return _dap.add_long(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    remove_long: (property_path) ->                                   --__SILP__
        return _dap.remove_long(@path, property_path)                 --__SILP__
                                                                      --__SILP__
    is_long: (property_path) ->                                       --__SILP__
        return _dap.if_long(@path, property_path)                     --__SILP__
                                                                      --__SILP__
    get_long: (property_path, default_value=0) ->                     --__SILP__
        return _dap.get_long(@path, property_path, default_value)     --__SILP__
                                                                      --__SILP__
    set_long: (property_path, value) ->                               --__SILP__
        return _dap.set_long(@path, property_path, value)             --__SILP__
                                                                      --__SILP__
    add_long_watcher: (property_path, watcher) ->                     --__SILP__
        i = get_index(_long_watchers)                                 --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_long_watchers, watcher)                     --__SILP__
            if #_long_watchers == 1                                   --__SILP__
                _dap.watch_long(@path, property_path)                 --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_long_watcher: (property_path, watcher) ->                  --__SILP__
        i = get_index(_long_watchers)                                 --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_long_watchers, watcher)                     --__SILP__
            if #_long_watchers == 0                                   --__SILP__
                _dap.unwatch_long(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_long_changed: (property_path, last_value, value) ->           --__SILP__
        for watcher in *_long_watchers                                --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(float, 0)
    add_float: (property_path, value=0) ->                            --__SILP__
        return _dap.add_float(@path, property_path, value)            --__SILP__
                                                                      --__SILP__
    remove_float: (property_path) ->                                  --__SILP__
        return _dap.remove_float(@path, property_path)                --__SILP__
                                                                      --__SILP__
    is_float: (property_path) ->                                      --__SILP__
        return _dap.if_float(@path, property_path)                    --__SILP__
                                                                      --__SILP__
    get_float: (property_path, default_value=0) ->                    --__SILP__
        return _dap.get_float(@path, property_path, default_value)    --__SILP__
                                                                      --__SILP__
    set_float: (property_path, value) ->                              --__SILP__
        return _dap.set_float(@path, property_path, value)            --__SILP__
                                                                      --__SILP__
    add_float_watcher: (property_path, watcher) ->                    --__SILP__
        i = get_index(_float_watchers)                                --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_float_watchers, watcher)                    --__SILP__
            if #_float_watchers == 1                                  --__SILP__
                _dap.watch_float(@path, property_path)                --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_float_watcher: (property_path, watcher) ->                 --__SILP__
        i = get_index(_float_watchers)                                --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_float_watchers, watcher)                    --__SILP__
            if #_float_watchers == 0                                  --__SILP__
                _dap.unwatch_float(@path, property_path)              --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_float_changed: (property_path, last_value, value) ->          --__SILP__
        for watcher in *_float_watchers                               --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(double, 0)
    add_double: (property_path, value=0) ->                           --__SILP__
        return _dap.add_double(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    remove_double: (property_path) ->                                 --__SILP__
        return _dap.remove_double(@path, property_path)               --__SILP__
                                                                      --__SILP__
    is_double: (property_path) ->                                     --__SILP__
        return _dap.if_double(@path, property_path)                   --__SILP__
                                                                      --__SILP__
    get_double: (property_path, default_value=0) ->                   --__SILP__
        return _dap.get_double(@path, property_path, default_value)   --__SILP__
                                                                      --__SILP__
    set_double: (property_path, value) ->                             --__SILP__
        return _dap.set_double(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    add_double_watcher: (property_path, watcher) ->                   --__SILP__
        i = get_index(_double_watchers)                               --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_double_watchers, watcher)                   --__SILP__
            if #_double_watchers == 1                                 --__SILP__
                _dap.watch_double(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_double_watcher: (property_path, watcher) ->                --__SILP__
        i = get_index(_double_watchers)                               --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_double_watchers, watcher)                   --__SILP__
            if #_double_watchers == 0                                 --__SILP__
                _dap.unwatch_double(@path, property_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_double_changed: (property_path, last_value, value) ->         --__SILP__
        for watcher in *_double_watchers                              --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_TYPE(string, "")
    add_string: (property_path, value="") ->                          --__SILP__
        return _dap.add_string(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    remove_string: (property_path) ->                                 --__SILP__
        return _dap.remove_string(@path, property_path)               --__SILP__
                                                                      --__SILP__
    is_string: (property_path) ->                                     --__SILP__
        return _dap.if_string(@path, property_path)                   --__SILP__
                                                                      --__SILP__
    get_string: (property_path, default_value="") ->                  --__SILP__
        return _dap.get_string(@path, property_path, default_value)   --__SILP__
                                                                      --__SILP__
    set_string: (property_path, value) ->                             --__SILP__
        return _dap.set_string(@path, property_path, value)           --__SILP__
                                                                      --__SILP__
    add_string_watcher: (property_path, watcher) ->                   --__SILP__
        i = get_index(_string_watchers)                               --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(_string_watchers, watcher)                   --__SILP__
            if #_string_watchers == 1                                 --__SILP__
                _dap.watch_string(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_string_watcher: (property_path, watcher) ->                --__SILP__
        i = get_index(_string_watchers)                               --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(_string_watchers, watcher)                   --__SILP__
            if #_string_watchers == 0                                 --__SILP__
                _dap.unwatch_string(@path, property_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_string_changed: (property_path, last_value, value) ->         --__SILP__
        for watcher in *_string_watchers                              --__SILP__
            watcher(@path, property_path, last_value, value)          --__SILP__
                                                                      --__SILP__

{ :Item }
