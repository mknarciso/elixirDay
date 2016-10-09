#Code.require_file("local_plate.exs")
#Code.require_file("boiler_plate.exs")

defmodule Parcerias do
  def host, do: {192, 168, 64, 237} #'localhost'
  def port, do: 8080
  def filename, do: __ENV__.file
  def team, do: "Pano Branco Pato fu"
  def password, do: "244466666"
  def challenge, do: "Parcerias"

  def getMap (ent) do
    {max,map} = String.split(ent) |> Enum.split(1)
  end

  def genMap sMap,max do
    Enum.into( Enum.with_index(sMap) , %{}, fn({x,i}) ->
        {{rem(i,max),div(i,max)} , x} 
      end)
  end


end

entrada = "3\n0 3 10\n1 0 8\n3 10 0"
{max,map} = Parcerias.getMap(entrada)
oMap = Parcerias.genMap(map,max)

#BoilerPlate.connect(Parcerias)
