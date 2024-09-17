#include "node.h"
#include <iostream>

// Constructor que inicializa solo el nombre del nodo
Node::Node(const char *name, ArvGc *genicam) : name(name), genicam(genicam) {}

//Función para obtener el tipo de nodo
void Node::getNodeType(ArvGcNode *node, const char **type) {
    if (ARV_IS_GC_BOOLEAN(node)) {
        *type = "GcBoolean";
    } else if (ARV_IS_GC_CATEGORY(node)) {
        *type = "GcCategory";
    } else if (ARV_IS_GC_COMMAND(node)) {
        *type = "GcCommand";
    } else if (ARV_IS_GC_CONVERTER(node)) {
        *type = "GcConverter";
    } else if (ARV_IS_GC_CONVERTER_NODE(node)) {
        *type = "GcConverterNode";
    } else if (ARV_IS_GC_ENUM_ENTRY(node)) {
        *type = "GcEnumEntry";
    } else if (ARV_IS_GC_ENUMERATION(node)) {
        *type = "GcEnumeration";
    } else if (ARV_IS_GC_FLOAT_NODE(node)) {
        *type = "GcFloatNode";
    } else if (ARV_IS_GC_FLOAT_REG_NODE(node)) {
        *type = "GcFloatRegNode";
    } else if (ARV_IS_GC_GROUP_NODE(node)) {
        *type = "GcGroupNode";
    } else if (ARV_IS_GC_INDEX_NODE(node)) {
        *type = "GcIndexNode";
    } else if (ARV_IS_GC_INT_CONVERTER_NODE(node)) {
        *type = "GcIntConverterNode";
    } else if (ARV_IS_GC_INTEGER_NODE(node)) {
        *type = "GcIntegerNode";
    } else if (ARV_IS_GC_INT_REG_NODE(node)) {
        *type = "GcIntRegNode";
    } else if (ARV_IS_GC_INT_SWISS_KNIFE_NODE(node)) {
        *type = "GcIntSwissKnifeNode";
    } else if (ARV_IS_GC_INVALIDATOR_NODE(node)) {
        *type = "GcInvalidatorNode";
    } else if (ARV_IS_GC_MASKED_INT_REG_NODE(node)) {
        *type = "GcMaskedIntRegNode";
    } else if (ARV_IS_GC_PORT(node)) {
        *type = "GcPort";
    } else if (ARV_IS_GC_REGISTER_DESCRIPTION_NODE(node)) {
        *type = "GcRegisterDescriptionNode";
    } else if (ARV_IS_GC_REGISTER_NODE(node)) {
        *type = "GcRegisterNode";
    } else if (ARV_IS_GC_STRING_NODE(node)) {
        *type = "GcStringNode";
    } else if (ARV_IS_GC_STRING_REG_NODE(node)) {
        *type = "GcStringRegNode";
    } else if (ARV_IS_GC_STRUCT_ENTRY_NODE(node)) {
        *type = "GcStructEntryNode";
    } else if (ARV_IS_GC_STRUCT_REG_NODE(node)) {
        *type = "GcStructRegNode";
    } else if (ARV_IS_GC_SWISS_KNIFE(node)) {
        *type = "GcSwissKnife";
    } else if (ARV_IS_GC_SWISS_KNIFE_NODE(node)) {
        *type = "GcSwissKnifeNode";
    } else if (ARV_IS_GC_VALUE_INDEXED_NODE(node)) {
        *type = "GcValueIndexedNode";
    } else {
        *type = "Unknown";
    }
}


// Función para configurar las propiedades del nodo (sin parámetros)
void Node::setProperties() {
    ArvGcNode *node = arv_gc_get_node(genicam, name);
    //name = name_char;
    //ArvGcIntegerNode *property = ARV_GC_INTEGER_NODE(node);
    ArvGcAccessMode access_mode = arv_gc_feature_node_get_actual_access_mode(ARV_GC_FEATURE_NODE(node));
    
    //const node_type = arv_gc_property_node_get_node_type(ARV_GC_FEATURE_NODE(node));
    //Node::getNodeAccesMode(node, &accessMode);
    Node::getNodeType(node, &type);
    accessMode = arv_gc_access_mode_to_string(access_mode);
    description = arv_gc_feature_node_get_description(ARV_GC_FEATURE_NODE(node));
    tooltip = arv_gc_feature_node_get_tooltip(ARV_GC_FEATURE_NODE(node));
    value = arv_gc_feature_node_get_value_as_string(ARV_GC_FEATURE_NODE(node),nullptr);
    //printf("Access Mode: %d\n",access_mode);
    /*printf("Type: %s\n",type);
    printf("Description: %s\n",description);
    printf("Access Mode: %s\n",tooltip);
    printf("Value: %s\n",value);*/

}
void Node::printProperty(const char *property_name, const char *property){
    if(property != NULL){
        printf("%s: %s\n",property_name,property);
    }
}

// Método para imprimir las propiedades del nodo
void Node::printNode()  {
    Node::printProperty("Name", name);
    Node::printProperty("AccesMode", accessMode);
    Node::printProperty("Type", type);
    Node::printProperty("Description", description);
    Node::printProperty("ToolTip", tooltip);
    Node::printProperty("Value", value);
    /*printf("Name: %s\n",name);
    printf("Access Mode: %s\n",accessMode);
    printf("Type: %s\n",type);
    printf("Description: %s\n",description);
    printf("ToolTip: %s\n",tooltip);
    printf("Value: %s\n",value);*/
}

// Función estática para buscar todos los nodos
std::vector<const char*> Node::findAllNodes(ArvGc *genicam) {
    std::vector<const char *> nodeNames;
    const char *height = "HeightRegister";
    const char *width = "Width";
    const char *pixelformat = "PixelFormat";
    // Aquí implementarás la lógica para buscar todos los nodos. Por ejemplo:
    // Lógica de búsqueda de nodos (se deja vacía)
    // for (cada nodo encontrado) {
    //     Node newNode(nombre_del_nodo, algún_valor_int);
    //     nodes.push_back(newNode);
    // }

    // Por ahora, añadiré algunos nodos de ejemplo para mostrar cómo funcionaría
    nodeNames.push_back(height);
    nodeNames.push_back(width);
    nodeNames.push_back(pixelformat);

    return nodeNames;
}
