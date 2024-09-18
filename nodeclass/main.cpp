#include "node.h"
#include <iostream>

int main() {
    arv_update_device_list();
    ArvCamera *camera = arv_camera_new(arv_get_device_id(0),nullptr);
    ArvDevice *device = arv_camera_get_device(camera);
    ArvGc *genicam = arv_device_get_genicam(device);
    
    //Node myNode("Root",genicam);
    //myNode.findAllNodes(genicam);

    std::vector<const char*> node_names = Node::findAllNodes(genicam);
    //printf("Pos 0 de list: %s\n", node_names[0]);
    std::vector<Node> nodes;
    for (auto& names : node_names){
        // Crear un nodo con su nombre
        Node myNode(names,genicam);
        // Configurar las propiedades del nodo
        myNode.setProperties();
        nodes.push_back(myNode);
        //myNode.printNode();
    }
    //printf("Pos 0 de list: %s\n", node_names[0]);
    int pos = 0;
    for (int i = 0; i<nodes.size()-1 ; i++){
        if (strcmp(nodes[i].get_name(), "ImageProcessing") == 0){
            break;
        }
        pos = i+1;
    }
    //printf("Pos 0 de list: %s\n", node_names[0]);
    //nodes[pos].printNode();
    printf(nodes[pos].get_name());
    // Imprimir las propiedades del nodo
   // myNode.printNode();

    return 0;
}
