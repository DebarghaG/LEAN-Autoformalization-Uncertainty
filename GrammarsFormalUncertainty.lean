/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: DebarghaG
-/
import GrammarsFormalUncertainty.Basic
import GrammarsFormalUncertainty.Probability
import GrammarsFormalUncertainty.Metrics

/-!
# GrammarsFormalUncertainty

A library for Probabilistic Context-Free Grammars (PCFGs) with comprehensive
uncertainty quantification.

## Core Features

- **PCFG Data Structures**: Terminal/NonTerminal symbols, production rules, weighted rules
- **Probability Estimation**: MLE and Laplace-smoothed probability computation
- **Entropy Metrics**: Shannon, Rényi, cross-entropy, perplexity
- **Advanced Uncertainty**: KL/JS divergence, confidence intervals, spectral analysis
- **NSUI**: Normalized Structural Uncertainty Index

## Usage

Import this module for the core library (no Lean internals dependency):

```lean
import GrammarsFormalUncertainty
```

For Lean syntax extraction support, import:

```lean
import GrammarsFormalUncertaintyLean
```
-/
