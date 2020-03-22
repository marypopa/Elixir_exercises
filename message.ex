defmodule Message do
    def server(q) do
    receive do
        {pid, :push, val} -> 
            send(pid, {:ok})
            server(q ++ [val]) 
        {pid, :pop} -> 
            send(pid, {hd(q)}) 
            server(tl(q))
    end
    end
    def sum([]) do 0 end
    def sum([h|t]) do h + sum(t) end

    def push(pid, val) do
            send(pid,{self(), :push, val})
        receive do
            {:ok} -> :ok 
        end
    end
    def pop(pid) do
            send(pid,{self(), :pop})
        receive do
           {val} -> val 
        end
    end
    def new_queue() do
        spawn(fn -> server([]) end)
    end
end