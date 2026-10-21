---
title: "Imbalance-aware Loss Functions Improve Medical Image Classification"
authors:
  - admin
  - Ayhan Can Erdur
  - Josef A. Buchner
  - Jan C. Peeken
  - Daniel Rueckert
  - Benedikt Wiestler
date: "2024-07-03T00:00:00Z"
doi: ""

publication_types: ["paper-conference"]
publication: "*Medical Imaging with Deep Learning (MIDL)*, PMLR 250"
publication_short: "MIDL 2024"

abstract: "Deep learning models offer unprecedented opportunities for diagnosis, prognosis, and treatment planning. However, conventional deep learning pipelines often encounter challenges in learning unbiased classifiers within imbalanced data settings, frequently exhibiting bias towards minority classes. In this study, we aim to improve medical image classification by effectively addressing class imbalance. To this end, we employ differentiable loss functions derived from classification metrics commonly used in imbalanced data settings: the Matthews correlation coefficient (MCC) and the F1 score. We explore the efficacy of these loss functions both independently and in combination with cross-entropy loss and various batch sampling strategies on diverse medical datasets of 2D fundoscopy and 3D magnetic resonance images. Compared to conventional loss functions, we achieve notable improvements in overall classification performance, with increases of up to +12% in balanced accuracy and up to +51% in class-wise F1 score for minority classes when utilizing cross-entropy coupled with metrics-derived loss."

summary: "Differentiable loss functions derived from imbalance-aware metrics (MCC, F1), combined with cross-entropy, substantially improve classification of underrepresented classes across 2D fundoscopy and 3D MRI datasets."

tags:
  - Classification
  - Class Imbalance
  - Loss Functions
featured: true

url_pdf: "https://proceedings.mlr.press/v250/scholz24a/scholz24a.pdf"
url_source: "https://proceedings.mlr.press/v250/scholz24a.html"

image:
  caption: "Imbalance-aware loss functions for medical image classification (from the paper)."
  focal_point: "Center"
  preview_only: false

projects: []
---
