#include "node.h"
#include <iostream>

int main() {
    arv_update_device_list();
    ArvCamera *camera = arv_camera_new(arv_get_device_id(0),nullptr);
    ArvDevice *device = arv_camera_get_device(camera);
    ArvGc *genicam = arv_device_get_genicam(device);
    // Crear un nodo con su nombre
    Node myNode("Height",genicam);

    // Configurar las propiedades del nodo
    myNode.setProperties();

    // Imprimir las propiedades del nodo
    //myNode.printNode();

    return 0;
}
