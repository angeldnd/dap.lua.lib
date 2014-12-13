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

        @bool_watchers = {}
        @int_watchers = {}
        @long_watchers = {}
        @float_watchers = {}
        @double_watchers = {}
        @string_watchers = {}

    fire_event: (channel_path, evt) ->
        return _dap.fire_event(@path, channel_path, evt)

    --SILP: ITEM_CHANNEL(channel, channel_path)
    add_channel: (channel_path) ->                                    --__SILP__
        return _dap.add_channel(@path, channel_path)                  --__SILP__
                                                                      --__SILP__
    remove_channel: (channel_path) ->                                 --__SILP__
        return _dap.remove_channel(@path, channel_path)               --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_HANDLER(handler, handler_path)
    add_handler: (handler_path, handler) ->                           --__SILP__
        if @request_handlers[handler_path] == nil                     --__SILP__
            @request_handlers[handler_path] = handler                 --__SILP__
            return _dap.add_handler(@path, handler_path)              --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_handler: (handler_path, handler) ->                        --__SILP__
        if @request_handlers[handler_path] == handler                 --__SILP__
            @request_handlers[handler_path] = nil                     --__SILP__
            return _dap.remove_handler(@path, handler_path)           --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__

    --SILP: ITEM_ON(event, channel_path, evt)
    _on_event = (channel_path, evt) ->                                --__SILP__
        for listener in *@event_listeners                             --__SILP__
            listener(evt, channel_path, self)                         --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_ON(request, handler_path, req)
    _on_request = (handler_path, req) ->                              --__SILP__
        for listener in *@request_listeners                           --__SILP__
            listener(req, handler_path, self)                         --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_ON2(response, handler_path, req, res)
    _on_response = (handler_path, req, res) ->                        --__SILP__
        for listener in *@response_listeners                          --__SILP__
            listener(req, res, handler_path, self)                    --__SILP__
                                                                      --__SILP__

    --SILP: ITEM_LISTEN(event, channel_path)
    add_event_listener: (channel_path, listener) ->                   --__SILP__
        i = get_index(@event_listeners)                               --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@event_listeners, listener)                  --__SILP__
            if #@event_listeners == 1                                 --__SILP__
                _dap.listen_event(@path, channel_path)                --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_event_listener: (channel_path, listener) ->                --__SILP__
        i = get_index(@event_listeners)                               --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@event_listeners, listener)                  --__SILP__
            if #@event_listeners == 0                                 --__SILP__
                _dap.unwatch_event(@path, channel_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_LISTEN(request, handler_path)
    add_request_listener: (handler_path, listener) ->                 --__SILP__
        i = get_index(@request_listeners)                             --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@request_listeners, listener)                --__SILP__
            if #@request_listeners == 1                               --__SILP__
                _dap.listen_request(@path, handler_path)              --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_request_listener: (handler_path, listener) ->              --__SILP__
        i = get_index(@request_listeners)                             --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@request_listeners, listener)                --__SILP__
            if #@request_listeners == 0                               --__SILP__
                _dap.unwatch_request(@path, handler_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    --SILP: ITEM_LISTEN(response, handler_path)
    add_response_listener: (handler_path, listener) ->                --__SILP__
        i = get_index(@response_listeners)                            --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@response_listeners, listener)               --__SILP__
            if #@response_listeners == 1                              --__SILP__
                _dap.listen_response(@path, handler_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_response_listener: (handler_path, listener) ->             --__SILP__
        i = get_index(@response_listeners)                            --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@response_listeners, listener)               --__SILP__
            if #@response_listeners == 0                              --__SILP__
                _dap.unwatch_response(@path, handler_path)            --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__

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
        i = get_index(@bool_watchers)                                 --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@bool_watchers, watcher)                     --__SILP__
            if #@bool_watchers == 1                                   --__SILP__
                _dap.watch_bool(@path, property_path)                 --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_bool_watcher: (property_path, watcher) ->                  --__SILP__
        i = get_index(@bool_watchers)                                 --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@bool_watchers, watcher)                     --__SILP__
            if #@bool_watchers == 0                                   --__SILP__
                _dap.unwatch_bool(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_bool_changed: (property_path, last_value, value) ->           --__SILP__
        for watcher in *@bool_watchers                                --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
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
        i = get_index(@int_watchers)                                  --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@int_watchers, watcher)                      --__SILP__
            if #@int_watchers == 1                                    --__SILP__
                _dap.watch_int(@path, property_path)                  --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_int_watcher: (property_path, watcher) ->                   --__SILP__
        i = get_index(@int_watchers)                                  --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@int_watchers, watcher)                      --__SILP__
            if #@int_watchers == 0                                    --__SILP__
                _dap.unwatch_int(@path, property_path)                --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_int_changed: (property_path, last_value, value) ->            --__SILP__
        for watcher in *@int_watchers                                 --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
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
        i = get_index(@long_watchers)                                 --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@long_watchers, watcher)                     --__SILP__
            if #@long_watchers == 1                                   --__SILP__
                _dap.watch_long(@path, property_path)                 --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_long_watcher: (property_path, watcher) ->                  --__SILP__
        i = get_index(@long_watchers)                                 --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@long_watchers, watcher)                     --__SILP__
            if #@long_watchers == 0                                   --__SILP__
                _dap.unwatch_long(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_long_changed: (property_path, last_value, value) ->           --__SILP__
        for watcher in *@long_watchers                                --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
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
        i = get_index(@float_watchers)                                --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@float_watchers, watcher)                    --__SILP__
            if #@float_watchers == 1                                  --__SILP__
                _dap.watch_float(@path, property_path)                --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_float_watcher: (property_path, watcher) ->                 --__SILP__
        i = get_index(@float_watchers)                                --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@float_watchers, watcher)                    --__SILP__
            if #@float_watchers == 0                                  --__SILP__
                _dap.unwatch_float(@path, property_path)              --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_float_changed: (property_path, last_value, value) ->          --__SILP__
        for watcher in *@float_watchers                               --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
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
        i = get_index(@double_watchers)                               --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@double_watchers, watcher)                   --__SILP__
            if #@double_watchers == 1                                 --__SILP__
                _dap.watch_double(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_double_watcher: (property_path, watcher) ->                --__SILP__
        i = get_index(@double_watchers)                               --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@double_watchers, watcher)                   --__SILP__
            if #@double_watchers == 0                                 --__SILP__
                _dap.unwatch_double(@path, property_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_double_changed: (property_path, last_value, value) ->         --__SILP__
        for watcher in *@double_watchers                              --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
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
        i = get_index(@string_watchers)                               --__SILP__
        if i == nil                                                   --__SILP__
            table.insert(@string_watchers, watcher)                   --__SILP__
            if #@string_watchers == 1                                 --__SILP__
                _dap.watch_string(@path, property_path)               --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    remove_string_watcher: (property_path, watcher) ->                --__SILP__
        i = get_index(@string_watchers)                               --__SILP__
        if i != nil                                                   --__SILP__
            table.remove(@string_watchers, watcher)                   --__SILP__
            if #@string_watchers == 0                                 --__SILP__
                _dap.unwatch_string(@path, property_path)             --__SILP__
            return true                                               --__SILP__
        return false                                                  --__SILP__
                                                                      --__SILP__
    _on_string_changed: (property_path, last_value, value) ->         --__SILP__
        for watcher in *@string_watchers                              --__SILP__
            watcher(value, last_value, property_path, self)           --__SILP__
                                                                      --__SILP__

{ :Item }
