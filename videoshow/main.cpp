#include "SensiaBridge.h"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <map>
#include <set>
#include <string>
#include <cstdlib>

// Funcion para analizar los argumentos en formato clave=valor
std::map<std::string, std::string> parse_arguments(int argc, char* argv[]) {
    std::map<std::string, std::string> arguments;

    for (int i = 1; i < argc; ++i) {
        std::string arg(argv[i]);
        auto pos = arg.find('=');
        if (pos != std::string::npos) {
            std::string key = arg.substr(0, pos);
            std::string value = arg.substr(pos + 1);
            arguments[key] = value;
        } else {
            std::cerr << "Error: Argumento invalido (debe ser clave=valor): " << arg << std::endl;
            std::cerr << "Pon como ejemplo (GainRegister=10): " << arg << std::endl;
        }
    }

    return arguments;
}

void mostrarVideo(const std::string& rutaVideo) {
    // Cargar la imagen desde la ruta
    cv::VideoCapture video_capture (rutaVideo);

    // Variables para los frames
    cv::Mat frame;

    while (true) {
        // Leer un frame del video
        video_capture >> frame;

        // Verificar si el frame es válido
        if (frame.empty()) {
            break;  // Salir del bucle si no hay más frames
        }

        // Mostrar el frame
        cv::imshow("Video", frame);

        // Salir si se presiona la tecla 'q'
        if (cv::waitKey(30) >= 0) {
            break;
        }
    }

    // Liberar recursos
    video_capture.release();
    cv::destroyAllWindows();
}
// Funcion para imprimir los argumentos
void print_arguments(const std::map<std::string, std::string>& arguments) {
    for (const auto& pair : arguments) {
        std::cout << pair.first << " = " << pair.second << std::endl;
    }
}


int main(int argc, char* argv[]) {

    bool verificarParams = false;
    // Analizar los argumentos
    auto arguments = parse_arguments(argc, argv);

    ArvBuffer *buff = NULL;
    std::string ruta = "C:/CODE/videoaravis-main/imgs/output_video.avi";  // Cambia esta ruta por la ruta de tu imagen
        
    

    // Imprimir los argumentos
    print_arguments(arguments);

    // Verificar si la clave en los argumentos esta presente en una lista
    std::set<std::string> allowed_keys = {"Gain_SensorType2", "Gain_SensorType6", "Gain_SensorType8"};

    // Verificar si alguna clave de los argumentos está presente en la lista
    for (const auto& key : allowed_keys) {
        auto it = arguments.find(key);
        if (it != arguments.end()) {
            std::cout << "La clave '" << key << "' esta presente con el valor: " << it->second << std::endl;
            proyectoSensiaBridge::SensiaBridge obj;
            verificarParams = true;
            obj.doSomething(arguments);
            mostrarVideo(ruta);
            break; // Salimos del bucle si encontramos una clave válida y ejecutamos la acción
        }
    }
    if (verificarParams == false) {
        std::cout << "no se ven parametros validos dentro de la ejecucion." << std::endl;
    }

    return 0;
}


