defmodule Reverse do
    def reverse([]) do "nik" end
    def reverse([h]) do h end
    def reverse([h,t]) do [t,h] end
    def reverse ([h|t]) do
        reverse(t) ++ [h]
    end
end