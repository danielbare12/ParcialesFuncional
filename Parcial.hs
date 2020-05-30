import Text.Show.Functions

data Guantelete = Guantelete {
    material :: String,
    gema :: Int
}

data Personaje = Personaje {
    nombre :: String,
    edad :: Int,
    energia :: Int,
    habilidades :: [String],
    planeta :: String
} deriving Show

type Universo = [Personaje]

ironMan = Personaje "Iron Man" 53 100 ["Volar", "Inteligencia", "Armadura"] "Tierra"
drStrange = Personaje "Doctor Strange" 43 150 ["Teletransportacion", "Volar", "Magia"] "Tierra"
groot = Personaje "Groot" 5 90 ["Generar Plantas", "Renacer"] "Desconocido"
wolverine = Personaje "Wolverine" 55 80 ["Garras", "Regeneracion", "Inmortalidad"] "Tierra"
viudaNegra = Personaje "Viudad Negra" 35 30 ["Espia", "Artes Marciales", "Armas"] "Tierra"

guante1 = Guantelete "hierro" 6
guante2 = Guantelete "uru" 6

mitad universo = (length universo) `div` 2

chasquido guantelete universo | (material guantelete) == "uru" && (gema guantelete) == 6 = take ((length universo) `div` 2) universo
                              | otherwise = universo
