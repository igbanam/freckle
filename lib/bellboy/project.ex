defmodule Bellboy.Project do
  @derive [Poison.Encoder]
  defstruct [:id, :name]
end
