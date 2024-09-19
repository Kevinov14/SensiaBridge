#ifndef NODE_H
#define NODE_H

#include <string>
#include <arv.h>
#include <vector>

class Node {
    
private:
    const char *access_mode;
    const char *name;
    const char *type;
    const char *description;
    const char *tooltip;
    const char *value;
    ArvGc *genicam;
    ArvGcNode *node;
    std::vector<const char*> namelist;
    std::vector<const char*> name_childs;
    std::vector<Node> node_childs;
    int level=0;
    //ArvDomNodeChildList *childs

public:
    // Constructor que solo toma el nombre
    Node(const char *name, ArvGc *genicam);

    // Función para determinar el tipo de nodo
    void getNodeType(const char **type);

    // Función para guardar las propiedades del nodo
    void setProperties();

    // Función para mostrar una propiedad y su valor
    void printProperty(const char *property_name,const char *property, int level);

    // Función para obtener todas las features
    void list_features(const char *feature, int list_mode, GRegex *regex, int level);

    void list_features_childs(const char *feature, int list_mode, GRegex *regex, int level);

    //void arv_tool_show_feature (ArvGcFeatureNode *node, int list_mode, int level);

    // Método para imprimir las propiedades del nodo
    void printNode(int level);

    void printAllNodes();

    // Funcion que busca los nodos (llama a list_features)
    void findNodes();

    void findChilds();

    //getters
    const char *getName(){return name;}
    const char *getAccesMode(){return access_mode;}
    const char *getType(){return type;}
    const char *getDescription(){return description;}
    const char *getTooltip(){return tooltip;}
    const char *getValue(){return value;}
    std::vector<const char*> getNamelist(){return namelist;}
    std::vector<const char*> getChildNames(){return name_childs;}
    std::vector<Node> getChilds(){return node_childs;}
    

    //setters
    void setNamelist(const char* list){namelist.push_back(list);}
    void setNameChilds(const char* n_childs){name_childs.push_back(n_childs);}
    void setNodeChilds(Node nodechilds){ node_childs.push_back(nodechilds);}

};

#endif // NODE_H
