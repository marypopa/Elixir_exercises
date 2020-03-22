defmodule MinModule do

    def minList([]) do "nimik" end
    def minList([h|t]) do minList(t,h) end
    defp minList([h|t],min) do
        if h < min do
            minList(t,h)
        else 
            minList(t,min)
        end
    end
    defp minList([],min) do
        min
    end
end

defmodule MaxModule do

    def maxList([]) do "nimik" end
    def maxList([h|t]) do maxList(t,h) end
    defp maxList([h|t],max) do
        if h > max do
            maxList(t,h)
        else 
            maxList(t,max)
        end
    end
    defp maxList([],max) do
        max
    end
end
