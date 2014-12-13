--  Created by YJ Park on 14/12/01.
--  Copyright (c) 2014年 AngelDnD. All rights reserved.

import Item from require "dap.item"
import is_instance, is_class from require "dap.utils"

_items = {}

get_item = (item_path, cls=nil) ->
    item = _items[item_path]
    if item == nil
        if cls != nil && is_class(cls, Item)
            if _dap.is_item(item_path, cls.dap_type)
                item = cls(item_path)
                _items[item_path] = item
    return item

add_item = (item_path, cls=Item) ->
    if !is_class(cls, Item)
        return false

    result = true
    if get_item(item_path, cls) == nil
        if _dap.add_item(item_path, cls.dap_type)
            item = cls(item_path)
            _items[item_path] = item
        else
            result = false

    return result
    
-- convinience method, try get_item first, if not there, try add_item
use_item = (item_path, cls=Item) ->
    if !is_class(cls, Item)
        return nil

    item = get_item(item_path, cls)
    if item == nil && _items[item_path] == nil && add_item(item_path, cls)
        item = get_item(item_path, cls)

    return item

remove_item = (item_path) ->
    _items[item_path] = nil
    return _dap.remove_item(item_path)
    
clone_item = (item_path, to_path) ->
    result = _dap.clone_item(item_path, to_path)
    item = get_item(item_path)
    if item != nil
        new_item = item.clone(to_path)
        _items[to_path] = new_item

    return result

-- Following apis are internal callbacks from low level _dap api
-- There are exported as global, though shouldn't be used directly
-- in lua/moon

export _dap_on_event = (item_path, channel_path, evt) ->
    item = get_item(item_path)
    if item != nil
        item\_on_event(channel_path, evt)

export _dap_on_request = (item_path, handler_path, req) ->
    item = get_item(item_path)
    if item != nil
        item\_on_request(handler_path, req)

export _dap_on_response = (item_path, handler_path, req, res) ->
    item = get_item(item_path)
    if item != nil
        item\_on_response(handler_path, req, res)

export _dap_do_handle = (item_path, handler_path, req) ->
    item = get_item(item_path)
    if item != nil
        return item\_do_handle(handler_path, req)
    else
        return {}

--SILP: REGISTERY_WATCH_TYPE(bool)
export _dap_on_bool_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                            --__SILP__
    if item != nil                                                             --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)             --__SILP__
                                                                               --__SILP__
--SILP: REGISTERY_WATCH_TYPE(int)
export _dap_on_int_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                           --__SILP__
    if item != nil                                                            --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)            --__SILP__
                                                                              --__SILP__
--SILP: REGISTERY_WATCH_TYPE(long)
export _dap_on_long_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                            --__SILP__
    if item != nil                                                             --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)             --__SILP__
                                                                               --__SILP__
--SILP: REGISTERY_WATCH_TYPE(float)
export _dap_on_float_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                             --__SILP__
    if item != nil                                                              --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)              --__SILP__
                                                                                --__SILP__
--SILP: REGISTERY_WATCH_TYPE(double)
export _dap_on_double_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                              --__SILP__
    if item != nil                                                               --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)               --__SILP__
                                                                                 --__SILP__
--SILP: REGISTERY_WATCH_TYPE(string)
export _dap_on_string_changed = (item_path, property_path, last_value, value) -> --__SILP__
    item = get_item(item_path, nil)                                              --__SILP__
    if item != nil                                                               --__SILP__
        item\_on_%{type}_changed(property_path, last_value, value)               --__SILP__
                                                                                 --__SILP__

{ :get_item :add_item :use_item :remove_item :clone_item }
