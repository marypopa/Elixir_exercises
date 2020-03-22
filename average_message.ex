defmodule Avarage do
    def avarage(avg) do
        IO.puts("Current average is",[avg])
        receive do
            {:num} -> avarage((avg+num)/2)
            # code
        end
    end

end