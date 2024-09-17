#ifndef NODE_H
#define NODE_H

#include <string>
#include <arv.h>
#include <vector>


class Node {
private:
    const char *accessMode;
    const char *name;
    const char *type;
    const char *description;
    const char *tooltip;
    const char *value;
    ArvGc *genicam;
    ArvGcNode *node;

public:
    // Constructor que solo toma el nombre
    Node(const char *name, ArvGc *genicam);

    // Función para determinar el tipo de nodo
    void getNodeType(ArvGcNode *node, const char **type);

    // Función para configurar las propiedades del nodo (sin parámetros)
    void setProperties();

    void printProperty(const char *property_name,const char *property);

    // Método para imprimir las propiedades del nodo
    void printNode();

    static std::vector<const char*> findAllNodes(ArvGc *genicam);

    //getters
    const char *get_name(){return name;}


    //setters

};

#endif // NODE_H
