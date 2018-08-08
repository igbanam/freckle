defmodule Freckle do
  @moduledoc """
  Documentation for Freckle.
  """

  @doc """
  Enrtry Point
  """
  def main(args \\ []) do
    args
    |> digest_arguments
    |> process
  end

  defp digest_arguments(args) do
    options =
      args
      |> OptionParser.parse(
        switches: [help: :boolean, version: :boolean],
        aliases: [h: :help, v: :version])

    case options do
      { [ help: true ], _, _ }    -> :help
      { [ version: true ], _, _ } -> :version
      _                           -> :help
    end
  end

  defp process(:help) do
    """
    USAGE
    =====
      freckle --project PROJECT --for HH:MM:SS
      freckle [-h | --help]
      freckle [-v | --version]

    ARGS
    ====

        PROJECT    The project you want to log time for
        HH:MM:SS   Hours, minutes, and seconds you want to log
    """
    |> IO.puts
  end

  defp process(:version) do
    IO.puts("Version 0.0.0")
  end
end
