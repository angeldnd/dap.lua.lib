--  Created by YJ Park on 14/12/01.
--  Copyright (c) 2014年 AngelDnD. All rights reserved.

is_instance = (instance, cls) ->
    return is_class(instance.__class, cls)

is_class = (cls, parent) ->
    if cls == parent
        return true
    else if cls.__parent != nil
        return is_class(cls.__parent, parent)
    else
        return false

{ :is_instance :is_class }