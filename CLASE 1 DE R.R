x<- "hola"
y<- "UNTRM"

paste(x, y, sep = "*")

área_circ<-function(radio){
  
  pi*radio*radio
  
}

área_circ(radio = 10)
área_circ(radio = 19)


# Función para calcular el Índice de Masa Corporal (IMC)
calcular_imc <- function(peso, altura) {
  # Calcula el IMC
  imc <- peso / (altura^2)
  
  # Clasificación según el valor del IMC
  clasificacion <- ifelse(imc < 18.5, "Bajo peso",
                          ifelse(imc >= 18.5 & imc < 24.9, "Normal",
                                 ifelse(imc >= 25 & imc < 29.9, "Sobrepeso", 
                                        ifelse(imc >= 30, "Obesidad", "Desconocido"))))
  
  # Retorna el resultado como una lista con el IMC y la clasificación
  return(list(imc = imc, clasificacion = clasificacion))
}

# Ejemplo de uso de la función
resultado <- calcular_imc(70, 1.75)  # Peso en kg, altura en metros
print(paste("IMC:", round(resultado$imc, 2)))
print(paste("Clasificación:", resultado$clasificacion))

