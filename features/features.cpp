#include "features.h"

namespace camera_features{
    void feature::list_features() {
        
        arv_update_device_list();
        ArvCamera *camera = arv_camera_new(arv_get_device_id(0),nullptr);
        ArvDevice *device = arv_camera_get_device(camera);
        ArvGc *genicam = arv_device_get_genicam(device);
        if (camera == NULL) {
            std::cerr << "No se encontró ninguna cámara" << std::endl;
        }

        // Conecta al dispositivo (cámara)
        if (device == NULL) {
            std::cerr << "No se pudo conectar al dispositivo" << std::endl;
        }
        
        // Obtiene el archivo GenICam XML desde el dispositivo
        size_t size;
        const char *xml_data = arv_device_get_genicam_xml(device, &size);
        if (xml_data != NULL) {
            std::string xml_content(xml_data);  // Convertimos el char* a std::string para fácil manejo

            // Buscamos todos los nombres dentro de las etiquetas <pFeature>
            std::string pfeature_start_tag = "<pFeature>";
            std::string pfeature_end_tag = "</pFeature>";
            size_t pos = 0;

            std::cout << "Features encontrados dentro de <pFeature> en el GenICam XML:" << std::endl;

            while ((pos = xml_content.find(pfeature_start_tag, pos)) != std::string::npos) {
                // Encontramos la posición de apertura de <pFeature>
                size_t start_pos = pos + pfeature_start_tag.length();
                size_t end_pos = xml_content.find(pfeature_end_tag, start_pos);

                if (end_pos != std::string::npos) {
                    // Extraemos el contenido entre <pFeature>...</pFeature>
                    std::string pfeature_name = xml_content.substr(start_pos, end_pos - start_pos);
                    std::cout << pfeature_name << std::endl;  // Imprime el nombre de la feature
                    pos = end_pos + pfeature_end_tag.length();  // Avanzamos a la siguiente búsqueda
                } else {
                    break;  // Si no hay cierre de etiqueta, salimos
                }
            }
        } else {
            std::cerr << "No se pudo obtener el XML del dispositivo" << std::endl;
        }
        // Libera el dispositivo
        g_object_unref(device);
    }
    
    
    

    void set_feature(std::string feature){

    }
}