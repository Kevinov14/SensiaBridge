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


std::vector<const char*> list_features (ArvGc *genicam, const char *feature, int list_mode, GRegex *regex, int level)
{
    ArvGcNode *node;
    std::vector<const char*> list;
    node = arv_gc_get_node(genicam, feature);
    if (ARV_IS_GC_FEATURE_NODE (node) && arv_gc_feature_node_is_implemented (ARV_GC_FEATURE_NODE (node), NULL)) {
                gboolean match;

                match = regex == NULL || g_regex_match (regex, arv_gc_feature_node_get_name (ARV_GC_FEATURE_NODE (node)), G_REGEX_MATCH_DEFAULT, NULL);

        if (ARV_IS_GC_CATEGORY (node)) 
        {
            const GSList *features;
            const GSList *iter;
            GError *error;

            features = arv_gc_category_get_features (ARV_GC_CATEGORY (node));

            for (iter = features; iter != NULL; iter = iter->next) {
                //std::cout << "list_XXXXX: " << (const char *) iter->data << std::endl;
                list.push_back((const char*)iter->data);
                list_features (genicam, (const char *) iter->data, list_mode, match ? NULL : regex, level + 1);
            }
        }
    }
    return list;
}

GRegex *arv_regex_new_from_glob_pattern (const char *glob, gboolean caseless)
{
        GRegex *regex;
    GString *regex_pattern;
    const char *iter;
    char **globs;
    gunichar character;
    unsigned int i;

    g_return_val_if_fail (g_utf8_validate (glob, -1, NULL), NULL);

    regex_pattern = g_string_new ("");

    globs = g_strsplit (glob, "|", -1);

    for (i = 0; globs[i] != NULL; i++) {
        /* Ignore empty strings */
        if (globs[i][0] == '\0')
            continue;

        if (i > 0)
            g_string_append (regex_pattern, "|^");
        else
            g_string_append (regex_pattern, "^");

        iter = g_strstrip (globs[i]);
        while (iter != NULL && *iter != '\0') {
            character = g_utf8_get_char (iter);
            switch (character) {
                case '\\':
                    g_string_append (regex_pattern, "\\\\");
                    break;
                case '^':
                    g_string_append (regex_pattern, "\\^");
                    break;
                case '$':
                    g_string_append (regex_pattern, "\\$");
                    break;
                case '.':
                    g_string_append (regex_pattern, "\\.");
                    break;
                case '[':
                    g_string_append (regex_pattern, "\\[");
                    break;
                case '|':
                    g_string_append (regex_pattern, "\\|");
                    break;
                case '(':
                    g_string_append (regex_pattern, "\\(");
                    break;
                case ')':
                    g_string_append (regex_pattern, "\\)");
                    break;
                case '?':
                    g_string_append (regex_pattern, ".");
                    break;
                case '*':
                    g_string_append (regex_pattern, ".*");
                    break;
                case '+':
                    g_string_append (regex_pattern, "\\+");
                    break;
                case '{':
                    g_string_append (regex_pattern, "\\{");
                    break;
                default:
                    g_string_append_unichar (regex_pattern, character);
                    break;
            }
            iter = g_utf8_find_next_char (iter, NULL);
        }

        g_string_append (regex_pattern, "$");
    }

    g_strfreev (globs);

    regex = g_regex_new (regex_pattern->str, G_REGEX_OPTIMIZE, G_REGEX_MATCH_DEFAULT, NULL);
    g_string_free (regex_pattern, TRUE);

    return regex;
}


// Función estática para buscar todos los nodos
std::vector<const char*> Node::findAllNodes(ArvGc *genicam) {
    std::vector<const char *> nodeNames;
    GRegex *regex;
    //std::cout << "Entramos en getFeature: " << nam << std::endl;
    regex = arv_regex_new_from_glob_pattern ("Root", TRUE);
    nodeNames = list_features (genicam, "Root", 1,  regex, 0);
    g_regex_unref (regex);
   
    return nodeNames;
}

