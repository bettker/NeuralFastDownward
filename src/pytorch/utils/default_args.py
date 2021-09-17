# Train
DEFAULT_OUTPUT_LAYER = "regression"
DEFAULT_NUM_FOLDS = 1
DEFAULT_HIDDEN_LAYERS = 3
DEFAULT_HIDDEN_UNITS = []
DEFAULT_BATCH_SIZE = 100
DEFAULT_ACTIVATION = "relu"
DEFAULT_WEIGHT_DECAY = 0
DEFAULT_DROPOUT_RATE = 0
DEFAULT_SHUFFLE = False
DEFAULT_BIAS = True
DEFAULT_LEARNING_RATE = 0.001
DEFAULT_MAX_EPOCHS = 99999999
DEFAULT_MAX_EPOCHS_NOT_IMPROVING = 100
DEFAULT_MAX_TRAINING_TIME = float("inf")
DEFAULT_RANDOM_SEED = -1
DEFAULT_LINEAR_OUTPUT = False
DEFAULT_SCATTER_PLOT = True
DEFAULT_SCATTER_PLOT_N_EPOCHS = -1
DEFAULT_WEIGHTS_METHOD = "none"
DEFAULT_WEIGHTS_SEED = "1"
DEFAULT_COMPARED_HEURISTIC_CSV_DIR = ""
DEFAULT_HSTAR_CSV_DIR = ""

# Test
DEFAULT_DOMAIN_PDDL = ""
DEFAULT_SEARCH_ALGORITHM = "eager_greedy"
DEFAULT_HEURISTIC = "nn"
DEFAULT_UNARY_THRESHOLD = 0.01
DEFAULT_MAX_SEARCH_TIME = float("inf")  # seconds
DEFAULT_MAX_SEARCH_MEMORY = 4000  # MB
DEFAULT_MAX_EXPANSIONS = float("inf")
DEFAULT_OUTPUT_FOLDER = "./results"
DEFAULT_TEST_MODEL = "all"
DEFAULT_HEURISTIC_MULTIPLIER = 1
