defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r/@|#|\$|%|&|\^|:|!|,/u, "")
    |> String.split([" ", "_"])
    |> Enum.frequencies
  end
end
