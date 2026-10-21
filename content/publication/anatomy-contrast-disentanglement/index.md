---
title: "Contrastive Anatomy-Contrast Disentanglement: A Domain-General MRI Harmonization Method"
authors:
  - admin
  - Ayhan Can Erdur
  - Robbie Holland
  - Viktoria Ehm
  - Jan C. Peeken
  - Benedikt Wiestler
  - Daniel Rueckert
date: "2025-09-23T00:00:00Z"
doi: "10.1007/978-3-032-04978-0_10"

publication_types: ["paper-conference"]
publication: "*Medical Image Computing and Computer Assisted Intervention (MICCAI)*"
publication_short: "MICCAI 2025"

abstract: "Magnetic resonance imaging (MRI) is an invaluable tool for clinical and research applications. Yet, variations in scanners and acquisition parameters cause inconsistencies in image contrast, hindering data comparability and reproducibility across datasets and clinical studies. Existing scanner harmonization methods, designed to address this challenge, face limitations, such as requiring traveling subjects or struggling to generalize to unseen domains. We propose a novel approach using a conditioned diffusion autoencoder with a contrastive loss and domain-agnostic contrast augmentation to harmonize MR images across scanners while preserving subject-specific anatomy. Our method enables brain MRI synthesis from a single reference image. It outperforms baseline techniques, achieving a +7% PSNR improvement on a traveling subjects dataset and +18% improvement on age regression in unseen scanners. Our model provides robust, effective harmonization of brain MRIs to target scanners without requiring fine-tuning."

summary: "A conditioned diffusion autoencoder with a contrastive loss and domain-agnostic contrast augmentation that disentangles anatomy from contrast to harmonize brain MRI across unseen scanners — without paired data or fine-tuning."

tags:
  - MRI Harmonization
  - Disentanglement
  - Domain Generalization
featured: true

url_pdf: "https://arxiv.org/pdf/2509.06592"
url_code: "https://github.com/daniel-scholz/cacd"

image:
  caption: "Contrastive anatomy–contrast disentanglement (from the paper)."
  focal_point: "Center"
  preview_only: false

projects: []
---
