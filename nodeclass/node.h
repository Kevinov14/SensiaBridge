#ifndef NODE_H
#define NODE_H

#include <string>
#include <arv.h>

class Node {
private:
    int accessMode;
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

    // Método para imprimir las propiedades del nodo
    void printNode() const;
};

#endif // NODE_H
