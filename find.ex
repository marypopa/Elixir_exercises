defmodule Find do
    def find(x,[x]) do "find" end
    def find(x,[]) do "not find" end
    def find(x,[h|t]) do
        if x == h do
            "found"
        else
            find(x,t)
        end
    end
end