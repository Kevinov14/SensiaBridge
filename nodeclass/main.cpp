#include "node.h"
#include <iostream>

int main() {
    arv_update_device_list();
    ArvCamera *camera = arv_camera_new(arv_get_device_id(0),nullptr);
    ArvDevice *device = arv_camera_get_device(camera);
    ArvGc *genicam = arv_device_get_genicam(device);
    
    //Node myNode("Root",genicam);
    //myNode.findNodes(genicam);
    Node my("Root",genicam);
    my.findNodes();
    
    std::vector<Node> nodes;
    for (auto& names : my.getNamelist()){
        Node myNode(names,genicam);
        myNode.findNodes();
        for (auto& namechilds : myNode.getChildNames()){
            Node subNode(namechilds, genicam);
            subNode.findNodes();
            myNode.setNodeChilds(subNode);
            
        }
        nodes.push_back(myNode);
    }

    int pos = 0;
    for (int i = 0; i<nodes.size()-1 ; i++){
        if (strcmp(nodes[i].getName(), "PeripheralControl") == 0){
            break;
        }
        pos = i+1;
    }
    nodes[pos].printNode(0);
    return 0;
}
