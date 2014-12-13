# ITEM_TYPE(type, default_value) #
```
add_${type}: (property_path, value=${default_value}) =>
    return _dap.add_${type}(@path, property_path, value)

remove_${type}: (property_path) =>
    return _dap.remove_${type}(@path, property_path)

is_${type}: (property_path) =>
    return _dap.if_${type}(@path, property_path)

get_${type}: (property_path, default_value=${default_value}) =>
    return _dap.get_${type}(@path, property_path, default_value)

set_${type}: (property_path, value) =>
    return _dap.set_${type}(@path, property_path, value)

watch_${type}: (property_path) =>
    return _dap.watch_${type}(@path, property_path)

unwatch_${type}: (property_path) =>
    return _dap.unwatch_${type}(@path, property_path)

```

# REGISTERY_WATCH_TYPE(type) #
```
export _dap_on_${type}_changed = (item_path, property_path, last_value, value) ->
    item = get_item(item_path, nil)
    if item != nil
        item\_on_%{type}_changed(property_path, last_value, value)

```
