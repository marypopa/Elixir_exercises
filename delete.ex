defmodule Delete do
    def delete(_,[]) do [] end
    def delete(x,[x]) do [] end
    def delete(x,[h|t]) do
        if x == h do
            t
        else 
            [h] ++ delete(x,t)
        end
    end
end