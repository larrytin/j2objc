.SUFFIXES: .java .m
.PHONY: default clean translate link

# Change to where distribution was unzipped.
J2OBJC_DIST = ~/dev/tools/lib/j2objc/dist

BUILD_DIR = $(CURDIR)/target/j2objc
MAIN_SRC_DIR = $(CURDIR)/src/main/java
MAIN_GEN_DIR = $(CURDIR)/Classes/generated
MAIN_SOURCE_LIST = $(BUILD_DIR)/main.sources.list
MAIN_SOURCES = $(subst $(MAIN_SRC_DIR)/,,$(shell find $(MAIN_SRC_DIR) -name *.java))
MAIN_GEN_SOURCES = $(MAIN_SOURCES:%.java=${MAIN_GEN_DIR}/%.m)
MAIN_OBJECTS = $(MAIN_SOURCES:%.java=$(BUILD_DIR)/main/%.o)
SUPPORT_LIB = $(BUILD_DIR)/libJava.a

TEST_SRC_DIR = $(CURDIR)/src/test/java
TEST_GEN_DIR = $(CURDIR)/Classes/test_generated
TEST_SOURCES = $(subst $(TEST_SRC_DIR)/,,$(shell find $(TEST_SRC_DIR) -name *.java))
TEST_SOURCE_LIST = $(BUILD_DIR)/test.sources.list
TEST_GEN_SOURCES = $(TEST_SOURCES:%.java=$(TEST_GEN_DIR)/%.m)
TEST_OBJECTS = $(TEST_SOURCES:%.java=$(BUILD_DIR)/test/%.o)
TEST_BIN = $(BUILD_DIR)/jre_unit_tests

J2OBJC = $(J2OBJC_DIST)/j2objc -g -use-arc
J2OBJCC = $(J2OBJC_DIST)/j2objcc -ObjC
JUNIT_JAR = $(J2OBJC_DIST)/lib/junit-4.10.jar

default: clean translate test

translate: translate_main translate_test

pre_translate_main: $(BUILD_DIR) $(MAIN_GEN_DIR)
	@rm -f $(MAIN_SOURCE_LIST)
	@touch $(MAIN_SOURCE_LIST)
        
${MAIN_GEN_DIR}/%.m ${MAIN_GEN_DIR}/%.h: $(MAIN_SRC_DIR)/%.java
	@echo $? >> $(MAIN_SOURCE_LIST)

translate_main: pre_translate_main $(MAIN_GEN_SOURCES)
	@if [ `cat $(MAIN_SOURCE_LIST) | wc -l` -ge 1 ] ; then \
	  $(J2OBJC) -sourcepath $(MAIN_SRC_DIR) -d ${MAIN_GEN_DIR} \
	    `cat $(MAIN_SOURCE_LIST)` ; \
	fi

$(BUILD_DIR)/main/%.o: ${MAIN_GEN_DIR}/%.m $(MAIN_SRC_DIR)/%.java
	@mkdir -p `dirname $@`
	@$(J2OBJCC) -c $< -o $@ \
	-g -I${MAIN_GEN_DIR}

$(SUPPORT_LIB): $(MAIN_OBJECTS)
	libtool -static -o $(SUPPORT_LIB) $(MAIN_OBJECTS)

link: translate $(SUPPORT_LIB)

pre_translate_test: $(BUILD_DIR) $(TEST_GEN_DIR)
	@rm -f $(TEST_SOURCE_LIST)
	@touch $(TEST_SOURCE_LIST)

$(TEST_GEN_DIR)/%.m $(TEST_GEN_DIR)/%.h: $(TEST_SRC_DIR)/%.java
	@echo $? >> $(TEST_SOURCE_LIST)

translate_test: pre_translate_test $(TEST_GEN_SOURCES)
	@if [ `cat $(TEST_SOURCE_LIST) | wc -l` -ge 1 ] ; then \
	  $(J2OBJC) -sourcepath $(MAIN_SRC_DIR):$(TEST_SRC_DIR) -d $(TEST_GEN_DIR) \
	    -classpath $(JUNIT_JAR) -Werror \
	    `cat $(TEST_SOURCE_LIST)` ; \
	fi

$(BUILD_DIR)/test/%.o: $(TEST_GEN_DIR)/%.m $(TEST_SRC_DIR)/%.java
	@mkdir -p `dirname $@`
	@$(J2OBJCC) -c $< -o $@ \
	  -g -I${MAIN_GEN_DIR} -I$(TEST_GEN_DIR) \
	  -Wno-objc-redundant-literal-use -Wno-format \
	  -Werror -Wno-parentheses

$(TEST_BIN): $(TEST_OBJECTS) $(SUPPORT_LIB)
	@$(J2OBJCC) -o $@ $(TEST_OBJECTS) \
	  -g -Werror \
	  -ljunit -lJava -L$(BUILD_DIR)

link_test: link translate_test $(TEST_OBJECTS) $(TEST_BIN)

test: link_test $(TEST_BIN)
	/bin/sh ../../scripts/runtests.sh $(TEST_BIN) $(subst /,.,$(TEST_SOURCES:%.java=%))

$(MAIN_GEN_DIR):
	@mkdir -p $(MAIN_GEN_DIR)
$(TEST_GEN_DIR):
	@mkdir -p $(TEST_GEN_DIR)
$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)/main
	@mkdir -p $(BUILD_DIR)/test

clean:
	@rm -rf $(BUILD_DIR) $(MAIN_GEN_DIR) $(TEST_GEN_DIR)
