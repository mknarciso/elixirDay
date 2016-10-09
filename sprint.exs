#Code.require_file("local_plate.exs")
Code.require_file("boiler_plate.exs")

defmodule FizzBuzz do
  def host, do: {192, 168, 64, 237} #'localhost'
  def port, do: 8080
  def filename, do: __ENV__.file
  def team, do: "Pano Branco Pato fu"
  def password, do: "244466666"
  def challenge, do: "Sprint"

  entrada = "3 5\nalice\nbob\ncharlie\n1\n10\n10\n1\n1"
  tratada = String.split(entrada)
  progs = tratada |> Enum.at(0)
  probs = tratada |> Enum.at(1)
  {progsNum,probsNum,tratada} = Enum.split(tratada, &Enum.split(tratada, 1))
  end

end

BoilerPlate.connect(FizzBuzz)
