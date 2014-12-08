# ITEM_TYPE(type, defaultValue) #
```
add_${type}: (propertyPath, value=${defaultValue}) =>
    return dap.add_${type}(@path, propertyPath, value)

remove_${type}: (propertyPath) =>
    return dap.remove_${type}(@path, propertyPath)

is_${type}: (propertyPath) =>
    return dap.if_${type}(@path, propertyPath)

get_${type}: (propertyPath, defaultValue=${defaultValue}) =>
    return dap.get_${type}(@path, propertyPath, defaultValue)

set_${type}: (propertyPath, value) =>
    return dap.set_${type}(@path, propertyPath, value)

watch_${type}: (propertyPath) =>
    return dap.watch_${type}(@path, propertyPath)

unwatch_${type}: (propertyPath) =>
    return dap.unwatch_${type}(@path, propertyPath)

```
