#ifndef TRIE_TRIE_UTIL_H
#define TRIE_TRIE_UTIL_H

#include <vector>

#include "trie_node.h"

namespace trie {
template <typename T>
tnode<T>* recur(tnode<T>* n, int offset = 0) {
    if (n == nullptr) {
        return nullptr;
    }
    tnode<T>* it = nullptr;
    for (int i = offset; i < 128; i++) {
        it = n->getChild(i);
        if (it == nullptr) {
            if (i == 127) {
                return recur(n->getParent(), n->getParentIndex() + 1);
            }
        continue;
        }
        if (it->isEnd()) {
        return it;
        }
        return recur(it, 0);
    }
}

template <typename T>
tnode<T>* rrecur(tnode<T>* n, int offset) {
    if (n == nullptr) {
        return nullptr;
    }
    if (n->isEnd()) {
        return n;
    }
    tnode<T>* it = nullptr;
    for (int i = offset; i > -1; i--) {
        it = n->getChild(i);
        if (it == nullptr) {
            if (i == 0) {
                return rrecur(n->getParent(), n->getParentIndex() - 1);
            }
        continue;
        }
        if (it->isEnd()) {
            return it;
        }
        return recur(it, 0);
    }
}
} // namespace trie

#endif
