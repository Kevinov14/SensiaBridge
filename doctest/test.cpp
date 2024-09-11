#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <doctest/doctest.h>
#include "SensiaBridge.h"  // Supón que el código de captura de video está en este archivo
#include <iostream>
#include <map>
#include <set>
#include <string>
#include <cstdlib>

using namespace proyectoSensiaBridge;
//ArvCameraPrivate *camera_private;
GError *error = nullptr;
//char* id = nullptr;
void cerrar_dispositivo(ArvCameraPrivate priv) {
    // Si priv.device está definido, cerramos el dispositivo
    //ArvCamera *camera;
     //camera = arv_camera_new_with_device(priv->device, &error);
    if (priv.device != nullptr) {
       // arv_camera_stop_acquisition(camera, nullptr);
        g_object_unref(priv.device); // Libera el recurso del dispositivo
        priv.device = nullptr;
    }
}

TEST_CASE("open_device - Inicialización del dispositivo") {
    

    // Simulamos que no hay cámaras disponibles
    arv_update_device_list();
    ArvCameraPrivate priv;
    //ArvCameraPrivate *priv = g_new0(ArvCameraPrivate, 1);
    int num_devices = arv_get_n_devices();
    printf("numero de dispositivos: %d\n", num_devices);
    const char *device_id = arv_get_device_id(0);
    
    
    // Si no hay dispositivos, verificamos que el error se maneje
    if (num_devices == 0) {
        CHECK_THROWS_AS(open_device(&priv, nullptr), std::runtime_error);
        
    } else {
        // Si hay dispositivos, no debería lanzarse ninguna excepción
        
        CHECK_NOTHROW(open_device(&priv, device_id));
        /*ArvCamera *camera;
        camera = arv_camera_new_with_device(priv->device, &error);
        //camera = arv_camera_new(device_id, &error);
        double exposure_time = 5000.0;  // 5 ms
        arv_camera_set_exposure_time(camera, exposure_time, &error);
        printf("Tiempo de exposición establecido en: %f microsegundos\n", exposure_time);

        // Obtener el valor actual de exposición
        double current_exposure = arv_camera_get_exposure_time(camera, &error);
        printf("Tiempo de exposición actual: %f microsegundos\n", current_exposure);

        // Configurar la ganancia
        double gain = 10.0;  // Ganancia de 10
        arv_camera_set_gain(camera, gain, &error);
        printf("Ganancia establecida en: %f\n", gain);*/
        
    }
    
    cerrar_dispositivo(priv);
    //g_object_unref(device_id);
    //arv_shutdown();
}

// Test para la configuración de características de la cámara
/*TEST_CASE("set_camera_feature - Establecer característica de la cámara") {
    ArvDevice *device = nullptr; // Simulación de un dispositivo nulo

    // Probar con un dispositivo nulo
    CHECK_THROWS_AS(set_camera_feature(device, 100, "Gain_SensorType2"), std::runtime_error);

    // Suponiendo que existe un dispositivo, verificamos la configuración de ganancia
    device = arv_open_device("fake_device_id", nullptr);
    CHECK_NOTHROW(set_camera_feature(device, 100, "Gain_SensorType2"));
}*/

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

void print_arguments(const std::map<std::string, std::string>& arguments) {
    for (const auto& pair : arguments) {
        std::cout << pair.first << " = " << pair.second << std::endl;
    }
}
// Test para la adquisición de imágenes
TEST_CASE("Saca_FOTOS - Captura de imágenes") {
    //int argc = 0; 
    //char* argv[];
    bool verificarParams = false;
    // Analizar los argumentos
    //auto arguments = parse_arguments(argc, argv);
    std::string key = "Gain_SensorType2";
    std::string value = "1";
    std::map<std::string, std::string> arguments;
    arguments[key] = value;
    ArvBuffer *buff = NULL;
    bool result = false;
    // Imprimir los argumentos
    print_arguments(arguments);
    //const char* device_id;
    //device_id = id;
    // Verificar si la clave en los argumentos esta presente en una lista
    std::set<std::string> allowed_keys = {"Gain_SensorType2", "Gain_SensorType6", "Gain_SensorType8"};
    proyectoSensiaBridge::SensiaBridge obj;
    // Verificar si alguna clave de los argumentos está presente en la lista
    for (const auto& key : allowed_keys) {
        auto it = arguments.find(key);
        if (it != arguments.end()) {
            std::cout << "La clave '" << key << "' esta presente con el valor: " << it->second << std::endl;
            
            verificarParams = true;
            //result = true;
            result = obj.doSomething(arguments);            
            break; // Salimos del bucle si encontramos una clave válida y ejecutamos la acción
        }
    }
    
    //int result = Saca_FOTOS(priv);
    CHECK_EQ(result, true);  // Debería ser 1 si la captura fue exitosa
}