#include "node.h"
#include <iostream>

// Constructor que inicializa solo el nombre del nodo
Node::Node(const char *name, ArvGc *genicam) : name(name), genicam(genicam) { 
    Node::setProperties();
    
    }

//Función para obtener el tipo de nodo
void Node::getNodeType(const char **type) {
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
    node = arv_gc_get_node(genicam, name);
    //name = name_char;
   // arv_dom_document_create_element
    //arv_dom_node_set_node_value
    //arv_dom_document_create_element
    //ArvGcIntegerNode *property = ARV_GC_INTEGER_NODE(node);
    ArvGcAccessMode access = arv_gc_feature_node_get_actual_access_mode(ARV_GC_FEATURE_NODE(node));
    //const node_type = arv_gc_property_node_get_node_type(ARV_GC_FEATURE_NODE(node));
    //Node::getNodeAccesMode(node, &accessMode);
    Node::getNodeType(&type);
    access_mode = arv_gc_access_mode_to_string(access);
    description = arv_gc_feature_node_get_description(ARV_GC_FEATURE_NODE(node));
    tooltip = arv_gc_feature_node_get_tooltip(ARV_GC_FEATURE_NODE(node));
    value = arv_gc_feature_node_get_value_as_string(ARV_GC_FEATURE_NODE(node),nullptr);
    //printf("Access Mode: %d\n",access_mode);
    /*printf("Type: %s\n",type);
    printf("Description: %s\n",description);
    printf("Access Mode: %s\n",tooltip);
    printf("Value: %s\n",value);*/

}
void Node::printProperty(const char *property_name, const char *property, int level){
    if(property != NULL){
        printf("%*s%s: %s\n",4 * level,"",property_name,property);
    }
}

// Método para imprimir las propiedades del nodo
void Node::printNode(int level)  {
    Node::printProperty("Name", name, level);
    Node::printProperty("AccesMode", access_mode, level);
    Node::printProperty("Type", type, level);
    Node::printProperty("Description", description, level);
    Node::printProperty("ToolTip", tooltip, level);
    Node::printProperty("Value", value, level);
    for (auto& subnodes_names : name_childs){
        if (subnodes_names != name){    
            Node subnode(subnodes_names, genicam);
            /*if (subnode.getType() == "GcCategory"){
                subnode.printNode(level +1);
            }else {
                subnode.printNode(level +2);
            }*/
            subnode.printNode(level +1);
            
        }
    }
}

/*void Node::arv_tool_show_feature (ArvGcFeatureNode *node, int list_mode, int level)
{
    if (ARV_IS_GC_CATEGORY (node)) {

    } else {
        if (arv_gc_feature_node_is_available (node, NULL)) {
            char *value = NULL;
            GError *error = NULL;
            gboolean is_selector;
            const char *access_mode;

            access_mode = arv_gc_access_mode_to_string (arv_gc_feature_node_get_actual_access_mode (node));

            if (list_mode == 2) {
                const char *unit;

                if (ARV_IS_GC_STRING (node) || ARV_IS_GC_ENUMERATION (node)) {
                    value = g_strdup_printf ("'%s'", arv_gc_string_get_value (ARV_GC_STRING (node), &error));
                } else if (ARV_IS_GC_INTEGER (node)) {
                    if (ARV_IS_GC_ENUMERATION (node)) {
                        value = g_strdup_printf ("'%s'", arv_gc_string_get_value (ARV_GC_STRING (node), &error));
                    } else {
                        unit = arv_gc_integer_get_unit (ARV_GC_INTEGER (node));
                        value = g_strdup_printf ("%" G_GINT64_FORMAT "%s%s",arv_gc_integer_get_value (ARV_GC_INTEGER (node), &error), unit != NULL ? " " : "", unit != NULL ? unit : "");
                    }
                } else if (ARV_IS_GC_FLOAT (node)) {
                    unit = arv_gc_float_get_unit (ARV_GC_FLOAT (node));

                    value = g_strdup_printf ("%g%s%s", arv_gc_float_get_value (ARV_GC_FLOAT (node), &error), unit != NULL ? " " : "", unit != NULL ? unit : ""); 
                } else if (ARV_IS_GC_BOOLEAN (node)) {
                        value = g_strdup_printf ("%s", arv_gc_boolean_get_value (ARV_GC_BOOLEAN (node), &error) ?  "true" : "false");
                } else if (ARV_IS_GC_REGISTER (node)) {
                    guint64 length;
                    length = arv_gc_register_get_length(ARV_GC_REGISTER (node), &error);
                    value = g_strdup_printf ("%" G_GUINT64_FORMAT, length);
                }
            }
            is_selector = ARV_IS_GC_SELECTOR (node) && arv_gc_selector_is_selector (ARV_GC_SELECTOR (node));
            if (error != NULL) {
                    g_clear_error (&error);
            } else {
                if (value != NULL && value[0] != '\0') {
                    //printf ("%*s%-13s: [%s] '%s' = %s\n", 4 * level, "", arv_dom_node_get_node_name (ARV_DOM_NODE (node)), access_mode, arv_gc_feature_node_get_name (node), value);
            }
            else {
                //printf ("%*s%-13s: [%s] '%s'\n", 4 * level, "", arv_dom_node_get_node_name (ARV_DOM_NODE (node)), access_mode, arv_gc_feature_node_get_name (node));
                //Node::setNamelist(arv_gc_feature_node_get_name(node));
                //Node::setNameChilds(arv_gc_feature_node_get_name (node));
            }
            if (is_selector) {
                const GSList *iter;

                for (iter = arv_gc_selector_get_selected_features (ARV_GC_SELECTOR (node));
                    iter != NULL;
                    iter = iter->next) {
                    //printf (" %*s     * %s\n", 4 * level, " ", arv_gc_feature_node_get_name ((ARV_GC_FEATURE_NODE(iter->data))));
                }

            }
        }

        g_clear_pointer (&value, g_free);
        } else {
            if (list_mode == 0){}
               // printf ("%*s%-12s: '%s' (Not available)\n", 4 * level, "", arv_dom_node_get_node_name (ARV_DOM_NODE (node)), arv_gc_feature_node_get_name (node));
        }
    }

    if (list_mode == 1) {
            const char *description;

            description = arv_gc_feature_node_get_description (node);
            if (description){}
                    //printf ("\t%s\n", description);
    }

    if (ARV_IS_GC_ENUMERATION (node) && list_mode == 1) {
        const GSList *childs;
        const GSList *iter;

        childs = arv_gc_enumeration_get_entries (ARV_GC_ENUMERATION (node));
        for (iter = childs; iter != NULL; iter = iter->next) {
            if (arv_gc_feature_node_is_implemented (ARV_GC_FEATURE_NODE(iter->data), NULL)) {
                //printf ("%*s%-12s: '%s'%s\n", 4 * (level + 1), "", arv_dom_node_get_node_name (ARV_DOM_NODE(iter->data)), arv_gc_feature_node_get_name (ARV_GC_FEATURE_NODE(iter->data)), arv_gc_feature_node_is_available (ARV_GC_FEATURE_NODE(iter->data), NULL) ? "" : " (Not available)");
            }
        }
    }
}
*/

void Node::list_features(const char *feature, int list_mode, GRegex *regex, int level)
{
    //ArvGcNode *node;
    //std::vector<const char*> list;
    node = arv_gc_get_node(genicam, feature);
    if (ARV_IS_GC_FEATURE_NODE (node) && arv_gc_feature_node_is_implemented (ARV_GC_FEATURE_NODE (node), NULL)) {
        gboolean match;

        match = regex == NULL || g_regex_match (regex, arv_gc_feature_node_get_name (ARV_GC_FEATURE_NODE (node)), G_REGEX_MATCH_DEFAULT, NULL);

        if (ARV_IS_GC_CATEGORY (node)) 
        {
            const GSList *features;
            const GSList *iter;

            features = arv_gc_category_get_features (ARV_GC_CATEGORY (node));
            int i=0;
            for (iter = features; iter != NULL; iter = iter->next) {
                   // std::cout << "list_XXXXX: " << (const char *) iter->data << std::endl;
                Node::setNamelist((arv_gc_feature_node_get_name(ARV_GC_FEATURE_NODE(node))));
                Node::setNameChilds(arv_gc_feature_node_get_name (ARV_GC_FEATURE_NODE(node)));
                //printf(list[i]);
                i++;
                list_features((const char *) iter->data, list_mode, match ? NULL : regex, level + 1);
            }
        }
    }
    //return list;
}

void Node::list_features_childs(const char *feature, int list_mode, GRegex *regex, int level)
{
    //ArvGcNode *node;
    //std::vector<const char*> list;
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
            int i=0;
            for (iter = features; iter != NULL; iter = iter->next) {
                    //std::cout << "list_XXXXX: " << (const char *) iter->data << std::endl;
                Node::setNameChilds((const char*)iter->data);
                //printf(list[i]);
                i++;
                //list_features_childs((const char *) iter->data, list_mode, match ? NULL : regex, level + 1);
            }
        }
    }
    //return list;
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
void Node::findNodes() {
    std::vector<const char *> nodeNames;
    GRegex *regex;
    //std::cout << "Entramos en getFeature: " << nam << std::endl;
    regex = arv_regex_new_from_glob_pattern (name, TRUE);
    list_features(name, 1,  regex, 0);
    g_regex_unref (regex);
   
    //return nodeNames;
}

void Node::findChilds(){
    std::vector<const char *> childNames;
    GRegex *regex;
    //Node parent(parentName,genicam);
    //std::cout << "Entramos en getFeature: " << nam << std::endl;
    regex = arv_regex_new_from_glob_pattern (name, TRUE);
    list_features_childs(name, 1,  regex, 0);
    g_regex_unref (regex);

}



