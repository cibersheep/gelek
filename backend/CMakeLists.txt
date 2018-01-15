include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set(
    RunQProcessbackend_SRCS
    modules/RunQProcess/backend.cpp
    modules/RunQProcess/mytype.cpp
)

# Make the unit test files visible on qtcreator
add_custom_target(RunQProcessbackend_UNITTEST_QML_FILES ALL SOURCES "tests/unit/tst_mytype.qml")

add_library(RunQProcessbackend MODULE
    ${RunQProcessbackend_SRCS}
)

set_target_properties(RunQProcessbackend PROPERTIES
         LIBRARY_OUTPUT_DIRECTORY RunQProcess)

qt5_use_modules(RunQProcessbackend Gui Qml Quick)

# Copy qmldir file to build dir for running in QtCreator
add_custom_target(RunQProcessbackend-qmldir ALL
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/modules/RunQProcess/qmldir ${CMAKE_CURRENT_BINARY_DIR}/RunQProcess
    DEPENDS ${QMLFILES}
)

# Install plugin file
install(TARGETS RunQProcessbackend DESTINATION ${QT_IMPORTS_DIR}/RunQProcess/)
install(FILES   modules/RunQProcess/qmldir DESTINATION ${QT_IMPORTS_DIR}/RunQProcess/)
