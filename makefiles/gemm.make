# gemm
# ------------------------------------------------------------------------------------------ #

LIB_GEMM = libgemm.a

# ------------------------------------------------------------------------------------------ #

GEMM_SOURCES := $(wildcard $(GEMM_DIR)/*.S)
GEMM_OBJECTS := $(patsubst %, $(BUILD_KERNEL_DIR)/%, $(notdir $(GEMM_SOURCES:.S=.o)))

# ------------------------------------------------------------------------------------------ #


# ------------------------------------------------------------------------------------------ #

lib: gemm
	ar -ru $(BUILD_LIB_DIR)/$(LIB_GEMM) $(GEMM_OBJECTS)
	ranlib $(BUILD_LIB_DIR)/$(LIB_GEMM)

gemm: $(GEMM_OBJECTS)

$(BUILD_KERNEL_DIR)/%.o : $(GEMM_DIR)/%.S
	@echo "$(RED)Compiling $< $(NC)"
	$(CC) $(CFLAGS) $(CFLAGS_OPTS) -c $< -o $@
