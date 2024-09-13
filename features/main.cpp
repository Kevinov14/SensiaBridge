#include "features.h"
#include <iostream>
#include <string>



int main(int argc, char **argv) {
    // Inicializa el subsistema de Aravis
    camera_features::feature obj;
    obj.list_features();
    return 0;
}
