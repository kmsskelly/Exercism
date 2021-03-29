defmodule RnaTranscriptions do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> to_string
    |> String.codepoints()
    |> Enum.map(fn nucleotide ->
      case nucleotide do
        "G" -> "C"
        "C" -> "G"
        "T" -> "A"
        "A" -> "U"
        _ -> "You must inform a DNA strand."
      end
    end)
    |> to_string
    |> to_charlist
  end
end
