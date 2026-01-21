/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: DebarghaG
-/
import GrammarsFormalUncertainty
import GrammarsFormalUncertainty.Lean.Extract
import GrammarsFormalUncertainty.Lean.Main

/-!
# GrammarsFormalUncertainty with Lean Integration

This module provides the full GrammarsFormalUncertainty library plus Lean-specific
syntax extraction capabilities.

Import this module when you need to extract PCFGs from Lean source files:

```lean
import GrammarsFormalUncertaintyLean
```

This includes:
- All core PCFG functionality from `GrammarsFormalUncertainty`
- Lean syntax tree traversal and production extraction
- File and directory processing for Lean codebases
- CLI tool support
-/
