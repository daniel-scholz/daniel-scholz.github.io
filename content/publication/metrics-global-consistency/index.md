---
title: "Metrics to Quantify Global Consistency in Synthetic Medical Images"
authors:
  - admin
  - Benedikt Wiestler
  - Daniel Rueckert
  - Martin J. Menten
date: "2023-10-08T00:00:00Z"
doi: "10.1007/978-3-031-53767-7_3"

publication_types: ["paper-conference"]
publication: "*Deep Generative Models (DGM4MICCAI), MICCAI Workshop*"
publication_short: "DGM4MICCAI 2023"

abstract: "Image synthesis is increasingly being adopted in medical image processing, for example for data augmentation or inter-modality image translation. In these critical applications, the generated images must fulfill a high standard of biological correctness. A particular requirement for these images is global consistency, i.e., an image being overall coherent and structured so that all parts of the image fit together in a realistic and meaningful way. Yet, established image quality metrics do not explicitly quantify this property of synthetic images. In this work, we introduce two metrics that can measure the global consistency of synthetic images on a per-image basis. We quantify global consistency by predicting and comparing explicit attributes of images on patches using supervised trained neural networks, and we adapt this strategy to an unlabeled setting by measuring the similarity of implicit image features predicted by a self-supervised network. Our results demonstrate that predicting explicit attributes can distinguish globally consistent from inconsistent images. Compared to established metrics such as the FID, our method can explicitly measure global consistency on a per-image basis, enabling a dedicated analysis of the biological plausibility of single synthetic images."

summary: "Two metrics that quantify the global consistency of synthetic medical images per image — one via supervised patch-wise attribute prediction, one via self-supervised features — enabling plausibility analysis of single images, unlike FID."

tags:
  - Generative Models
  - Evaluation Metrics
  - Image Synthesis
featured: true

url_pdf: "https://arxiv.org/pdf/2308.00402"

image:
  caption: "Quantifying global consistency in synthetic medical images (from the paper)."
  focal_point: "Center"
  preview_only: false

projects: []
---
