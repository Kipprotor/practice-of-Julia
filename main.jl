#カレントディレクトリにある".jl"で終わるファイルのリストを作成
jlFiles = [file for file = readdir() if occursin(r"\.jl$", file)]

# ♥♣♦♠
println("どのプログラムを実行しますか")
for (index, value) in enumerate(jlFiles)
  println("$index: $value")
end

while true
  inpt = parse(Int,readline())
  if inpt != 0 && inpt <= length(jlFiles)
    include(jlFiles[inpt])
    break
  end
end