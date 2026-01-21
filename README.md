# GrammarsFormalUncertainty

A Lean 4 library for Probabilistic Context-Free Grammars (PCFGs) with uncertainty quantification.

## Features

- PCFG data structures (terminals, non-terminals, production rules)
- Maximum Likelihood Estimation and Laplace smoothing
- Entropy metrics (Shannon, Rényi, cross-entropy, perplexity)
- Statistical measures (KL/JS divergence, confidence intervals)
- Spectral analysis and NSUI (Normalized Structural Uncertainty Index)
- Optional Lean syntax extraction support

## Building

```bash
lake build GrammarsFormalUncertainty      # Core library
lake build GrammarsFormalUncertaintyLean  # With Lean integration
lake build gfu                            # CLI tool
```

## Usage

### Core Library (standalone)

```lean
import GrammarsFormalUncertainty

open GrammarsFormalUncertainty

-- Create grammar counts
let counts := PCFGCounts.empty
  |>.addRule "expr" #[Symbol.terminal Terminal.ident]
  |>.addRule "expr" #[Symbol.nonTerminal "expr", Symbol.terminal (.symbol "+"), Symbol.nonTerminal "expr"]

-- Compute probabilities
let pcfg := computeProbabilities counts

-- Get entropy
let h := entropyFor pcfg "expr"
```

### Lean Integration

```lean
import GrammarsFormalUncertaintyLean

open GrammarsFormalUncertainty GrammarsFormalUncertainty.Lean

-- Extract PCFG from Lean files
let env ← initEnvironment
let counts ← processFile env "MyFile.lean" PCFGCounts.empty
let pcfg := computeLeanProbabilities counts
let metrics := computeUncertaintyMetrics pcfg counts
```

## Running Tests

```bash
lake build Basic Entropy Metrics LeanExtract LeanIntegration
```

## License

Apache 2.0

## Citation

```bibtex
@inproceedings{
ganguly2025grammars,
title={Grammars of Formal Uncertainty: When to Trust {LLM}s in Automated Reasoning Tasks},
author={Debargha Ganguly and Vikash Singh and Sreehari Sankar and Biyao Zhang and Xuecen Zhang and Srinivasan Iyengar and Xiaotian Han and Amit Sharma and Shivkumar Kalyanaraman and Vipin Chaudhary},
booktitle={The Thirty-ninth Annual Conference on Neural Information Processing Systems},
year={2025},
url={https://openreview.net/forum?id=QfKpJ00t2L}
}
```
