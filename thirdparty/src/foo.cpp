#include "foo.hpp"
#include <lz4.h>

namespace foo {
    std::string bar() {
        return LZ4_versionString();
    }
}