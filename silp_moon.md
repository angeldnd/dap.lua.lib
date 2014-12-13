# ITEM_TYPE(type, default_value) #
```
add_${type}: (property_path, value=${default_value}) ->
    return _dap.add_${type}(@path, property_path, value)

remove_${type}: (property_path) ->
    return _dap.remove_${type}(@path, property_path)

is_${type}: (property_path) ->
    return _dap.if_${type}(@path, property_path)

get_${type}: (property_path, default_value=${default_value}) ->
    return _dap.get_${type}(@path, property_path, default_value)

set_${type}: (property_path, value) ->
    return _dap.set_${type}(@path, property_path, value)

add_${type}_watcher: (property_path, watcher) ->
    i = get_index(_${type}_watchers)
    if i == nil
        table.insert(_${type}_watchers, watcher)
        if #_${type}_watchers == 1
            _dap.watch_${type}(@path, property_path)
        return true
    return false

remove_${type}_watcher: (property_path, watcher) ->
    i = get_index(_${type}_watchers)
    if i != nil
        table.remove(_${type}_watchers, watcher)
        if #_${type}_watchers == 0 
            _dap.unwatch_${type}(@path, property_path)
        return true
    return false

_on_${type}_changed: (property_path, last_value, value) ->
    for watcher in *_${type}_watchers
        watcher(@path, property_path, last_value, value)

```

# REGISTERY_WATCH_TYPE(type) #
```
export _dap_on_${type}_changed = (item_path, property_path, last_value, value) ->
    item = get_item(item_path, nil)
    if item != nil
        item\_on_%{type}_changed(property_path, last_value, value)

```
