#ifndef FEATURES_H
#define FEATURES_H

#include <arv.h>
#include <glib.h>
#include <map>
#include <string>
#include <cstdlib>
#include <iostream>
#include <arvdebug.h>
#include <arvmisc.h>
#include <stdio.h>
#include <stdlib.h>


typedef enum {
	ARV_TOOL_LIST_MODE_FEATURES,
	ARV_TOOL_LIST_MODE_DESCRIPTIONS,
	ARV_TOOL_LIST_MODE_VALUES
} ArvToolListMode;

namespace camera_features{
    class feature{
        public:
            void list_features();
            void set_feature(std::string feature);
            void get_feature(std::string feature);
    };

}
#endif // FEATURES_H