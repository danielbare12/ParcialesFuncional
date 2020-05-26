data Postulante = UnPostulante {nombre :: String, edad :: Int, remuneracion :: Float, conocimientos :: [String]} deriving Show
 
pepe = UnPostulante "Jose Perez" 35 15000.0 ["Haskell", "Prolog", "Wollok", "C"]
tito = UnPostulante "Roberto González" 20 12000.0 ["Haskell", "Php"]


data Puesto = UnPuesto {puesto:: String, conocimientoRequeridos :: [String]} deriving Show
jefe = UnPuesto "gerente de sistemas" ["Haskell", "Prolog", "wollok"]
chePibe = UnPuesto "cadete" ["ir al banco"]
 
type Nombre = String
apellidoDueno :: Nombre
apellidoDueno = "Gonzalez"

-- 1 a
tieneConocimientos :: Puesto -> Postulante -> Bool
tieneConocimientos puesto postulante = all (\unConociPuesto -> elem unConociPuesto (conocimientos postulante)) (conocimientoRequeridos puesto)