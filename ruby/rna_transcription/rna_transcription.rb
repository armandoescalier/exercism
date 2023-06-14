# frozen_string_literal: true

# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.

DNA_TO_RNA_EQUIVALENCE = {
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U'
}.freeze

# DNA to RNA equivalence challenge
class Complement
  def self.of_dna(dna_strand)
    dna_strand.chars.map { |nucleotide| DNA_TO_RNA_EQUIVALENCE[nucleotide] }.join
  end
end
