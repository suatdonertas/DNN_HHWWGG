# DNN_HHWWGG — Deep Learning for Di-Higgs Boson Search

Deep neural network pipeline built during my PhD research at CERN, used to search for
di-Higgs production (HH → WWγγ) in CMS collision data — one of the rarest and most
sought-after processes in particle physics, since finding it would directly probe how
the Higgs boson interacts with itself.

## The problem, in plain terms

Out of trillions of particle collisions, only a tiny handful could contain the signal
we're looking for — the rest is background noise that looks deceptively similar. This
project trains classifiers to separate genuine signal events from background, and then
quantifies *how statistically confident* we can be in that separation — not just "is
this classifier accurate," but "if we saw this many signal-like events, could we claim
a real discovery?"

## What's technically strong here

- **Custom implementation of discovery-significance statistics.** Rather than relying on
  a standard classifier accuracy metric, `roc.py` implements the asymptotic significance
  formula from Cowan, Cranmer, Gross & Vitells (arXiv:1007.1727) — the statistical method
  used across real CMS/ATLAS analyses to quantify discovery confidence — and extends it to
  compare discrimination power across multiple output classes simultaneously (`multiRoc`),
  correctly handling weighted event samples.
- **Multiple independent DNN classifiers**, each trained on even/odd-event splits for
  robust validation, then exported to **ONNX** for portable, framework-agnostic
  deployment — a production-oriented step many research projects skip entirely.
- **Custom training diagnostics** (`History.py`): a Keras callback tracking metrics at
  both the batch and epoch level, with automatic paired train/validation plotting —
  built to catch training pathologies invisible in a single final accuracy number.
- **Large-scale distributed computing**: models were trained and evaluated via batch job
  arrays submitted to an HPC cluster (Slurm), including monitoring and resubmission of
  failed jobs across thousands of files — real distributed-systems experience, just in
  a scientific-computing context rather than a cloud one.

## Repo structure

- `DNN_FH/`, `DNN_WW/`, `DNN_Tau/` — DNN training and evaluation per final-state channel
- `roc.py` — significance calculation and multi-class ROC comparison
- `History.py` — custom training-diagnostics callback
- `utils.py` — shared helper functions
