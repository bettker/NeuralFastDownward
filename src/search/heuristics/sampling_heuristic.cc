#include "sampling_heuristic.h"

#include "../option_parser.h"
#include "../plugin.h"

#include "../task_utils/task_properties.h"
#include "../utils/logging.h"

#include <cstddef>
#include <limits>
#include <utility>
#include <fstream>

using namespace std;

namespace sampling_heuristic {
SamplingHeuristic::SamplingHeuristic(const Options &opts)
    : Heuristic(opts),
      relevant_facts(task_properties::get_strips_fact_pairs(task.get())) {
    utils::g_log << "Initializing sampling heuristic..." << endl;
    rng.seed(0);
    string sample;
    ifstream file(opts.get<string>("sample_file"));
    while (getline(file, sample)) {
        if (sample[0] == '#')
            continue;
        int cut = sample.find(";");
        string state = sample.substr(cut+1);
        int value = stoi(sample.substr(0, cut));
        h[state] = value;
    }
    file.close();
}

SamplingHeuristic::~SamplingHeuristic() {
}

int SamplingHeuristic::compute_heuristic(const State &ancestor_state) {
    State state = convert_ancestor_state(ancestor_state);
    const vector<int> &values = state.get_values();
    vector<char> boolean_state(static_cast<long>(relevant_facts.size()));
    size_t idx = 0;
    for (const FactPair &fp: relevant_facts)
        boolean_state[idx++] = values[fp.var] == fp.value ? '1' : '0';
    vector<pair<string,int>> matched;
    int best_match = -1;
    for (auto& s: h) {
        int match = 0;
        for (unsigned a = 0; a < s.first.size(); a++)
            match += (int)(boolean_state[a] == s.first[a]);
        if (match > best_match) {
            best_match = match;
            matched.clear();
            matched.push_back(s);
        } else if (match == best_match) {
            matched.push_back(s);
        }
    }
    return matched[rng(matched.size())].second;
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis("Sampling heuristic",
                             "Returns cost of state on sampling. "
                             "If not sampled, returns cost of the "
                             "nearest state.");

    Heuristic::add_options_to_parser(parser);
    parser.add_option<string>(
            "sample_file",
            "Path to the samples file.");

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;
    else
        return make_shared<SamplingHeuristic>(opts);
}

static Plugin<Evaluator> _plugin("hsampling", _parse);
}
