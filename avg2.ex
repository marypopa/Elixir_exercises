defmodule AvarageM do
    def avg2() do
        receive do
            {num} -> avg2([num])
        end
    end
    def avg2(nums) do
        
        IO.puts("The avarage is #{sum(nums)/length(nums)}" )
        receive do
            {num} -> avg2(nums ++ [num])
        end
    end
    def sum([]) do 0 end
    def sum([x|xs]) do x + sum(xs) end
end