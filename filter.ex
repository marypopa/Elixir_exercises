defmodule Filter do
    def filter([]) do [] end
    def filter([h|t]) do
        if rem(h,2) == 0 do
            [h] ++ filter(t)
        else 
            filter(t)
        end
    end
end