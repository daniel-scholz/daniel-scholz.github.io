---
title: "Random Convolutions for Domain Generalization of Deep Learning–based Medical Image Segmentation Models"
authors:
  - admin
  - Ayhan Can Erdur
  - Jan C. Peeken
  - Aswathi Varma
  - Robert Graf
  - Jan S. Kirschke
  - Daniel Rueckert
  - Benedikt Wiestler
date: "2026-01-01T00:00:00Z"
doi: "10.1148/ryai.240502"

publication_types: ["article-journal"]
publication: "*Radiology: Artificial Intelligence*, 8(1):e240502"
publication_short: "Radiology: AI"

abstract: "Purpose: To evaluate random convolutions as an augmentation strategy for improving domain generalization of deep learning–based segmentation models in medical imaging. Materials and Methods: In this retrospective study, a random convolution–based augmentation strategy was applied to abdominal organ segmentation (AbdomenCT-1k and AMOS datasets) and brain tissue segmentation (IXI dataset). Performance was compared with baseline and state-of-the-art segmentation models (TotalSegmentator and deepAtropos), and random convolution configurations were analyzed for effects on in- and out-of-domain performance. Results: The random convolution–enhanced U-Net achieved in-domain Dice scores comparable to state-of-the-art baselines while attaining significantly higher out-of-domain Dice scores (e.g., MRI: 0.93 vs 0.85; T2-weighted imaging: 0.52 vs 0.33; false discovery rate–adjusted P < .001). Conclusion: Random convolutions yield more robust segmentation models that generalize better to unseen domains and are compatible with diverse segmentation architectures."

summary: "Random convolutions as a data-augmentation strategy push segmentation models to rely on shape over texture, substantially improving out-of-domain Dice scores across anatomies and imaging sequences — and compatible with diverse architectures."

tags:
  - Domain Generalization
  - Segmentation
  - Data Augmentation
featured: true

url_pdf: "https://pubs.rsna.org/doi/pdf/10.1148/ryai.240502"
url_code: "https://github.com/ai-idt/rc_aug"

image:
  caption: "Random convolution augmentation pipeline (from the paper)."
  focal_point: "Center"
  preview_only: false

projects: []
---
