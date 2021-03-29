defmodule RnaTranscription do

  @your_map %{
    ?A => ?U,
    ?C => ?G,
    ?G => ?C,
    ?T => ?A
  }
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(&(@your_map[&1]))
  end
end
