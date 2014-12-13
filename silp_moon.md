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
    i = get_index(@${type}_watchers)
    if i == nil
        table.insert(@${type}_watchers, watcher)
        if #@${type}_watchers == 1
            _dap.watch_${type}(@path, property_path)
        return true
    return false

remove_${type}_watcher: (property_path, watcher) ->
    i = get_index(@${type}_watchers)
    if i != nil
        table.remove(@${type}_watchers, watcher)
        if #@${type}_watchers == 0 
            _dap.unwatch_${type}(@path, property_path)
        return true
    return false

_on_${type}_changed: (property_path, last_value, value) ->
    for watcher in *@${type}_watchers
        watcher(value, last_value, property_path, self)

```

# ITEM_LISTEN(name, var_name) #
```
add_${name}_listener: (${var_name}, listener) ->
    i = get_index(@${name}_listeners)
    if i == nil
        table.insert(@${name}_listeners, listener)
        if #@${name}_listeners == 1
            _dap.listen_${name}(@path, ${var_name})
        return true
    return false

remove_${name}_listener: (${var_name}, listener) ->
    i = get_index(@${name}_listeners)
    if i != nil
        table.remove(@${name}_listeners, listener)
        if #@${name}_listeners == 0 
            _dap.unwatch_${name}(@path, ${var_name})
        return true
    return false

```

# ITEM_ON(name, var_name, data_name) #
```
_on_${name} = (${var_name}, ${data_name}) ->
    for listener in *@${name}_listeners
        listener(${data_name}, ${var_name}, self)

```

# ITEM_ON2(name, var_name, data1_name, data2_name) #
```
_on_${name} = (${var_name}, ${data1_name}, ${data2_name}) ->
    for listener in *@${name}_listeners
        listener(${data1_name}, ${data2_name}, ${var_name}, self)

```

# ITEM_CHANNEL(name, var_name) #
```
add_${name}: (${var_name}) ->
    return _dap.add_${name}(@path, ${var_name})

remove_${name}: (${var_name}) ->
    return _dap.remove_${name}(@path, ${var_name})
  
```

# ITEM_HANDLER(name, var_name) #
```
add_${name}: (${var_name}, handler) ->
    if @request_handlers[${var_name}] == nil
        @request_handlers[${var_name}] = handler
        return _dap.add_${name}(@path, ${var_name})
    return false

remove_${name}: (${var_name}, handler) ->
    if @request_handlers[${var_name}] == handler
        @request_handlers[${var_name}] = nil
        return _dap.remove_${name}(@path, ${var_name})
    return false
  
```

# REGISTRY_ON(name, var_name, data_name) #
```
export _dap_on_${name} = (item_path, ${var_name}, ${data_name}) ->
    item = get_item(item_path, nil)
    if item != nil
        item\_on_${name}(${var_name}, ${data_name})

```

# REGISTRY_ON2(name, var_name, data1_name, data2_name) #
```
export _dap_on_${name} = (item_path, ${var_name}, ${data1_name}, ${data2_name}) ->
    item = get_item(item_path, nil)
    if item != nil
        item\_on_${name}(${var_name}, ${data1_name}, ${data2_name})

```

# REGISTRY_WATCH_TYPE(type) #
```
export _dap_on_${type}_changed = (item_path, property_path, last_value, value) ->
    item = get_item(item_path, nil)
    if item != nil
        item\_on_%{type}_changed(property_path, last_value, value)

```
