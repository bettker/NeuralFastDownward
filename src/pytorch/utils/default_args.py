# Train
DEFAULT_OUTPUT_LAYER = "regression"
DEFAULT_NUM_FOLDS = 1
DEFAULT_HIDDEN_LAYERS = 2
DEFAULT_HIDDEN_UNITS = [250]
DEFAULT_BATCH_SIZE = 64
DEFAULT_ACTIVATION = "relu"
DEFAULT_WEIGHT_DECAY = 0
DEFAULT_DROPOUT_RATE = 0
DEFAULT_SHUFFLE = True
DEFAULT_BIAS = True
DEFAULT_LEARNING_RATE = 1e-4
DEFAULT_MAX_EPOCHS = 99999999
DEFAULT_MAX_TRAINING_TIME = float("inf") # seconds
DEFAULT_RANDOM_SEED = -1
DEFAULT_LINEAR_OUTPUT = False
DEFAULT_SCATTER_PLOT = True
DEFAULT_SCATTER_PLOT_N_EPOCHS = -1
DEFAULT_WEIGHTS_METHOD = "default"
DEFAULT_WEIGHTS_SEED = -1
DEFAULT_COMPARED_HEURISTIC_CSV_DIR = ""
DEFAULT_HSTAR_CSV_DIR = ""
DEFAULT_BIAS_OUTPUT = True
DEFAULT_NORMALIZE_OUTPUT = False
DEFAULT_OUTPUT_FOLDER = "results"
DEFAULT_MODEL = "resnet"
DEFAULT_PATIENCE = 100
DEFAULT_NUM_THREADS = 1
DEFAULT_SEED_INCREMENT_WHEN_BORN_DEAD = 100
DEFAULT_SAVE_HEURISTIC_PRED = False
DEFAULT_FORCED_MAX_EPOCHS = 1000
DEFAULT_RESTART_NO_CONV = True

# Test
DEFAULT_DOMAIN_PDDL = ""
DEFAULT_SEARCH_ALGORITHM = "eager_greedy"
DEFAULT_HEURISTIC = "nn"
DEFAULT_UNARY_THRESHOLD = 0.01
DEFAULT_MAX_SEARCH_TIME = float("inf") # seconds
DEFAULT_MAX_SEARCH_MEMORY = 4*1024 # MB
DEFAULT_MAX_EXPANSIONS = float("inf")
DEFAULT_TEST_MODEL = "all"
DEFAULT_HEURISTIC_MULTIPLIER = 1
DEFAULT_FACTS_FILE = ""
DEFAULT_DEF_VALUES_FILE = ""
DEFAULT_FORCED_MAX_SEARCH_TIME = 10*60 # seconds
DEFAULT_AUTO_TASKS_N = 10
DEFAULT_AUTO_TASKS_FOLDER = "tasks/ferber21/test_states"
DEFAULT_AUTO_TASKS_SEED = 0
