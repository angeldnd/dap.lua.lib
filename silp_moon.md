# ITEM_TYPE(type, defaultValue) #
```
add_${type}: (propertyPath, value=${defaultValue}) =>
    return _dap.add_${type}(@path, propertyPath, value)

remove_${type}: (propertyPath) =>
    return _dap.remove_${type}(@path, propertyPath)

is_${type}: (propertyPath) =>
    return _dap.if_${type}(@path, propertyPath)

get_${type}: (propertyPath, defaultValue=${defaultValue}) =>
    return _dap.get_${type}(@path, propertyPath, defaultValue)

set_${type}: (propertyPath, value) =>
    return _dap.set_${type}(@path, propertyPath, value)

watch_${type}: (propertyPath) =>
    return _dap.watch_${type}(@path, propertyPath)

unwatch_${type}: (propertyPath) =>
    return _dap.unwatch_${type}(@path, propertyPath)

```
