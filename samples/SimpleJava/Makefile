.SUFFIXES: .java .m
.PHONY: default clean translate link

# Change to where distribution was unzipped.
J2OBJC_DIST = ~/dev/tools/lib/j2objc/dist

SOURCE_DIR = src/main/java
BUILD_DIR = target/generated_sources
JAVA_SOURCES = $(shell find $(SOURCE_DIR) -name *.java)
JAVA_SOURCE_LIST = $(BUILD_DIR)/java.sources.list
TEMP_OBJECTS = $(subst $(SOURCE_DIR), $(BUILD_DIR), $(JAVA_SOURCES))
OBJECTS = $(TEMP_OBJECTS:.java=.o)
OBJC_SOURCES = $(OBJECTS:.o=.m)
JAVA_LIB = $(BUILD_DIR)/libjava.a

TEST_SOURCE_DIR = src/test/java
TEST_BUILD_DIR = target/generated_tests
TEST_SOURCES = $(shell find $(TEST_SOURCE_DIR) -name *.java)
TEST_SOURCE_LIST = $(TEST_BUILD_DIR)/test.sources.list
TEMP_TEST_OBJCS = $(subst $(TEST_SOURCE_DIR), $(TEST_BUILD_DIR), $(TEST_SOURCES))
TEST_OBJCS = $(TEMP_TEST_OBJCS:.java=.o)
TEST_OBJC_SOURCES = $(TEST_OBJCS:.o=.m)
TEST_BINS = $(TEST_OBJCS:.o=)

J2OBJC = $(J2OBJC_DIST)/j2objc
J2OBJCC = $(J2OBJC_DIST)/j2objcc
JUNIT_JAR = $(J2OBJC_DIST)/lib/junit-4.10.jar

default: test 

pre_translate: $(BUILD_DIR)
	@rm -f $(JAVA_SOURCE_LIST)
	@touch $(JAVA_SOURCE_LIST)
        
$(BUILD_DIR)/%.m $(BUILD_DIR)/%.h: $(SOURCE_DIR)/%.java
	@echo $? >> $(JAVA_SOURCE_LIST)

translate: pre_translate $(OBJC_SOURCES)
	@if [ `cat $(JAVA_SOURCE_LIST) | wc -l` -ge 1 ] ; then \
	  $(J2OBJC) -sourcepath $(SOURCE_DIR) -d $(BUILD_DIR) \
	    `cat $(JAVA_SOURCE_LIST)` ; \
	fi

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.m $(SOURCE_DIR)/%.java
	@$(J2OBJCC) -c $< -o $@ \
	-g -I$(BUILD_DIR)

$(JAVA_LIB): $(OBJECTS)
	libtool -static -o $(JAVA_LIB) $(OBJECTS)

link: translate $(JAVA_LIB)

pre_translate_test: $(TEST_BUILD_DIR)
	@rm -f $(TEST_SOURCE_LIST)
	@touch $(TEST_SOURCE_LIST)

$(TEST_BUILD_DIR)/%.m $(TEST_BUILD_DIR)/%.h: $(TEST_SOURCE_DIR)/%.java
	@echo $? >> $(TEST_SOURCE_LIST)

translate-test: pre_translate_test $(TEST_OBJC_SOURCES)
	@if [ `cat $(TEST_SOURCE_LIST) | wc -l` -ge 1 ] ; then \
	  $(J2OBJC) -sourcepath $(SOURCE_DIR):$(TEST_SOURCE_DIR) -d $(TEST_BUILD_DIR) \
	    -classpath $(JUNIT_JAR) -Werror \
	    `cat $(TEST_SOURCE_LIST)` ; \
	fi

$(TEST_BUILD_DIR)/%.o: $(TEST_BUILD_DIR)/%.m $(TEST_SOURCE_DIR)/%.java
	@mkdir -p `dirname $@`
	@$(J2OBJCC) -c $< -o $@ \
	  -g -I$(BUILD_DIR) -I$(TEST_BUILD_DIR) \
	  -Wno-objc-redundant-literal-use -Wno-format \
	  -Werror -Wno-parentheses

$(TEST_BUILD_DIR)/%: $(TEST_BUILD_DIR)/%.o $(JAVA_LIB)
	@$(J2OBJCC) $< -o $@ \
	  -g -Werror \
	  -ljunit -ljava -L$(BUILD_DIR)

link-test: link translate-test $(TEST_OBJCS) $(TEST_BINS)

test: link-test $(TEST_BINS)
	@/bin/sh runtests.sh $(TEST_BINS)

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)
$(TEST_BUILD_DIR):
	@mkdir -p $(TEST_BUILD_DIR)

clean:
	@rm -rf $(BUILD_DIR) $(TEST_BUILD_DIR)
