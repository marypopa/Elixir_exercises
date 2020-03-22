defmodule Flatten do
    def flatten([]) do [] end
    def flatten([h|t]) do h ++ flatten(t) end
end