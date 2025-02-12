
def fibs(len)
  seq = [0, 1]
  for i in 2...len
    seq << seq[i - 2] + seq[i - 1]
  end
  seq[...len]
end

def fibs_rec(len)  
  case len - 1
  when 0
    return [0,]
  when 1
    return [0, 1]
  end

  seq = fibs_rec(len - 1)
  seq << seq[-1] + seq[-2]
  seq
end

p fibs(8)
p fibs_rec(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]

p fibs(1)
p fibs_rec(1)
# => [0]

p fibs(2)
p fibs_rec(2)
# => [0, 1]