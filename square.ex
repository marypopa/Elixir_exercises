defmodule Square do
    def square([]) do [] end
    def square([h|t]) do [h*h] ++ square(t) end
end