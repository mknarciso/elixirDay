#Code.require_file("local_plate.exs")
Code.require_file("boiler_plate.exs")

defmodule ConsertaCpf do
  def host, do: {192, 168, 64, 237} #'localhost'
  def port, do: 8080
  def filename, do: __ENV__.file
  def team, do: "Pano Branco Pato fu"
  def password, do: "244466666"
  def challenge, do: "ConsertaCpf"

  def is_numeric(str) do
    case Float.parse(str) do
      {_num, ""} -> true
      {_num, _r} -> false               # _r : remainder_of_bianry
      :error     -> false
    end
  end

  def makeIntList (ent) do
    String.codepoints(ent) 
      |> Enum.filter(fn(x) -> 
        is_numeric(x)
      end)
      |> Enum.into( [],fn(x) -> 
        String.to_integer(x)
      end )
  end

  def isFull(list) do
    if Enum.count(list) < 11 do
      isFull([0|list])
    else
      list
    end
  end


  def makeCpf(list) do
      complete = makeIntList(list)
      |> isFull 
      |> Enum.into("",fn(x) ->
        Integer.to_string(x)
      end)
      result = String.slice(complete,0..2) <> "." <> String.slice(complete,3..5) <> "." <> String.slice(complete,6..8) <> "-" <> String.slice(complete,9..10)
  end

end   

entrada = "12345"
entrada2 = "comeco 333 meio 222 fim 111 verificacao 99."

lista1 = ConsertaCpf.makeCpf(entrada)
lista2 = ConsertaCpf.makeCpf(entrada2)



BoilerPlate.connect(ConsertaCpf)
