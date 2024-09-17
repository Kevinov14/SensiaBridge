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
    ArvGcIntegerNode *property = ARV_GC_INTEGER_NODE(node);
    ArvGcAccessMode access_mode = arv_gc_feature_node_get_imposed_access_mode(ARV_GC_FEATURE_NODE(node));
    //const node_type = arv_gc_property_node_get_node_type(ARV_GC_FEATURE_NODE(node));
    const char *node_type = nullptr;
    Node::getNodeType(node, &node_type);
    const char *descript = arv_gc_feature_node_get_description(ARV_GC_FEATURE_NODE(node));
    const char *tool_tip = arv_gc_feature_node_get_tooltip(ARV_GC_FEATURE_NODE(node));
    const char *val = arv_gc_feature_node_get_value_as_string(ARV_GC_FEATURE_NODE(node),nullptr);
    printf("Access Mode: %d\n",access_mode);
    printf("Type: %s\n",node_type);
    printf("Description: %s\n",descript);
    printf("Access Mode: %s\n",tool_tip);
    printf("Value: %s\n",val);

}

// Método para imprimir las propiedades del nodo
void Node::printNode() const {
    /*std::cout << "Node Properties:" << std::endl;
    std::cout << "Name: " << name << std::endl;
    std::cout << "Access Mode: " << accessMode << std::endl;
    std::cout << "Type: " << type << std::endl;
    std::cout << "Description: " << description << std::endl;
    std::cout << "Tooltip: " << tooltip << std::endl;
    std::cout << "Value: " << value << std::endl;*/


}
