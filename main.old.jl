# find コマンドの julia での実装
module Find
  export find
  function find(dir, ext)
    endsExt = endswith(ext)
    result = [joinpath(dir,f) for f in readdir(dir) if endsExt(f)]
    #println("for: ",result)
    for d in filter(isdir, readdir(dir))
      result = vcat(result, find(joinpath(dir,d), ext))
    end
    return result
  end
end

#=
for i in find(pwd(), ".jl")
  println(i)
end
=#

#カレントディレクトリにある".jl"で終わるファイルのリストを作成
jlFiles = Find.find(".", ".jl")
# ♥♣♦♠

while true
  println("\nどのプログラムを実行しますか")
  for (index, value) in enumerate(jlFiles)
    println("$index: $value")
  end
  inpt = parse(Int,readline())
  if inpt != 0 && inpt <= length(jlFiles)
    include(jlFiles[inpt])
  else
    print("終了します")
    break
  end
end
