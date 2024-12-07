#  Proyectos de FPGA y STM32F407

## Descripción 📖

Este repositorio trata el trabajo de una FPGA haciendo el juego del Yathzee y un microcontrolador STM32F407 para ---. Se implementaron funciones específicas en el FPGA utilizando VHDL, mientras que el STM32F407 se utilizó para ---.

## Características principales ✨

- **FPGA**: Diseñado en Vivado utilizando VHDL.
  - Procesamiento de audio.
- **STM32F407**: Programado en C usando STM32CubeIDE.
  - Comunicación con el FPGA a través de SPI/GPIO.
  - Interfaz para interaccion y manejo de datos.
- Comunicación bidireccional y sincronización eficiente entre FPGA y microcontrolador.

## Requisitos 🛠️

### Hardware
- FPGA: Artix-7-100T
- STM32F407 STM32F4 Discovery
- Fuente de alimentación 5V/3.3V

### Software
- Vivado.
- STM32CubeIDE.
- IDE Playground.
- draw.io.

## Instrucciones de instalación 🔧

### 1. Configuración del FPGA
1. Abre el proyecto en Vivado.
2. Sintetiza y genera el archivo binario/bitstream.
3. Programa el FPGA con el bitstream generado.

### 2. Configuración del STM32
1. Clona este repositorio:
   ```bash
   git clone https://github.com/tuusuario/tu-proyecto.git
   cd tu-proyecto
   ```
2. Abre el proyecto en STM32CubeIDE.
3. Compila y carga el código al STM32F407.

### 3. Conexión entre FPGA y STM32
Conecta los pines del FPGA y STM32 según el esquema incluido en la carpeta `docs/hardware`.

### 4. Ejecución
1. Alimenta los dispositivos.
2. Observa la salida en monitor serial/ terminal.

## Estructura del proyecto 📂

```plaintext
├── FPGA/
│   ├── src/               # Archivos fuente para FPGA
│   ├── GLOBAL/            # Archivos de proyecto FPGA Global
│   └── bitstream/         # Binarios generados para el FPGA
├── STM32/
│   ├── src/               # Código fuente para STM32
│   ├── include/           # Archivos de encabezado
│   └── build/             # Binarios generados para el STM32
├── docs/
│   ├── hardware/          # Diagramas y esquemas de conexión
│   └── software/          # Notas de implementación del software
└── README.md              # Este archivo
```
