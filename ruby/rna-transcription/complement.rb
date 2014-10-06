# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`


class Complement

  def self.flip_dna(strand)
    case strand
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
    end
  end

  def self.of_dna(dna)
    return flip_dna(dna) if dna.length == 1
    dna.chars.map { |strand|
      flip_dna(strand)
    }.join()
  end

  def self.flip_rna(strand)
    case strand
      when 'G' then 'C'
      when 'C' then 'G'
      when 'A' then 'T'
      when 'U' then 'A'
    end
  end

  def self.of_rna(rna)
    return flip_rna(rna) if rna.length == 1
    rna.chars.map { |strand|
      flip_rna(strand)
    }.join()
  end

end
