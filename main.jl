# find コマンドの julia での実装
module Find
  export find
  
  find(path, ext) = filter(f -> isTargetPath(f,ext), readdir(path,join=true))
  
  function isTargetPath(path,ext)
    if isdir(path) || endswith(path,ext)
      return true
    else
      return false
    end 
  end

end

function programSelector(path)
  #カレントディレクトリにある".jl"で終わるファイルのリストを作成
  jlFiles = Find.find(path, ".jl")
  
  println("\nプログラムのパスを指定してください")
  #println("(0: go back to main menu)")
  map( file -> println(file), enumerate(jlFiles))
  
  inpt = parse(Int,readline())
  #=
  if inpt == 0
    programSelector(path)
  else
  =#
  if isdir(jlFiles[inpt])
    programSelector(jlFiles[inpt])
  else
    include(jlFiles[inpt])
  end
end


# ♥♣♦♠
programSelector(pwd())
