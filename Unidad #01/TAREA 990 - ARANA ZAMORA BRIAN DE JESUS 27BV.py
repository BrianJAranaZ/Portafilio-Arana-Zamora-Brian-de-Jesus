import sys
import traceback
import os
import builtins
import math
import random

class RestrictedEnvironment:
    def __init__(self):
        # Limitar las funciones incorporadas permitidas
        self.safe_builtins = {
            'print': print,
            'input': input,
            'len': len,
            'str': str,
            'int': int,
            'float': float,
            'list': list,
            'tuple': tuple,
            'dict': dict,
            'range': range,
            'abs': abs,
            'sum': sum,
            'min': min,
            'max': max,
        }

        # Limitar el acceso al sistema de archivos deshabilitando la función 'open'
        self.safe_builtins['open'] = self.restricted_open

        # Limitar el acceso a algunos módulos
        self.safe_modules = {
            'math': math,
            'random': random,
        }

        # Variables globales disponibles para el usuario
        self.user_globals = {}

    def restricted_open(self, *args, **kwargs):
        # Lanzar una excepción si se intenta llamar a la función 'open'
        raise RuntimeError("!!!open!!! está deshabilitada.")

    def execute_code(self, code):
        try:
            # Ejecutar el código proporcionado por el usuario en el entorno restringido
            exec(code, {'__builtins__': self.safe_builtins}, self.user_globals)
        except Exception as e:
            # Capturar excepciones para que no se interrumpa el programa principal
            return f"Error: {str(e)}"
        # Mensaje de éxito si la evaluación es exitosa
        return "¡Código ejecutado con éxito!"

def start_restricted_environment():
    print("Bienvenido a python, para salir escribe 'exit'")

    # Crear una instancia de RestrictedEnvironment
    environment = RestrictedEnvironment()

    while True:
        try:
            # Leer el código del usuario
            user_code = input(">>> ")

            # Salir si el usuario escribe 'exit'
            if user_code.lower() == 'exit':
                break

            # Ejecutar el código proporcionado por el usuario en el entorno restringido
            result = environment.execute_code(user_code)
            
            # Mostrar el resultado de la ejecución
            print(result)
        except KeyboardInterrupt:
            # Manejar la interrupción de teclado (Ctrl+C)
            print("\nSaliendo...")
            break
        except Exception as e:
            # Capturar excepciones durante la ejecución del código del usuario
            print(f"!!!Error!!!: {str(e)}")

if __name__ == "__main__":
    # Llamar a la función principal si el script se ejecuta directamente
    start_restricted_environment()
