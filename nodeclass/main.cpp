#include "node.h"
#include <iostream>


int main() {
    arv_update_device_list();
    ArvCamera *camera = arv_camera_new(arv_get_device_id(0),nullptr);
    ArvDevice *device = arv_camera_get_device(camera);
    ArvGc *genicam = arv_device_get_genicam(device);
    
    std::vector<const char*> node_names = Node::findAllNodes(genicam);
    std::vector<Node> nodes;
    for (auto& names : node_names){
    // Crear un nodo con su nombre
    Node myNode(names,genicam);
    // Configurar las propiedades del nodo
    myNode.setProperties();
    nodes.push_back(myNode);
    //myNode.printNode();
    }
    int pos = 0;
    for (int i = 0; nodes[i].get_name() != "HeightRegister"; i++){
        pos = i+1;
    }
    nodes[pos].printNode();
    // Imprimir las propiedades del nodo
   // myNode.printNode();

    return 0;
}
