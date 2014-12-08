import Item from require "dap.item"

add_item = (itemPath, itemType) ->
    if _dap.add_item(itemPath, itemType)
        return Item(itemPath)
    else
        return nil

{ :add_item }
