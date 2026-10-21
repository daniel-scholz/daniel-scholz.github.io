---
title: "MM-DINOv2: Adapting Foundation Models for Multi-Modal Medical Image Analysis"
authors:
  - admin
  - Ayhan Can Erdur
  - Viktoria Ehm
  - Anke Meyer-Baese
  - Jan C. Peeken
  - Daniel Rueckert
  - Benedikt Wiestler
date: "2025-09-23T00:00:00Z"
doi: "10.1007/978-3-032-04984-1_31"

publication_types: ["paper-conference"]
publication: "*Medical Image Computing and Computer Assisted Intervention (MICCAI)*"
publication_short: "MICCAI 2025"

abstract: "Vision foundation models like DINOv2 demonstrate remarkable potential in medical imaging despite their origin in natural image domains. However, their design inherently works best for uni-modal image analysis, limiting their effectiveness for multi-modal imaging tasks that are common in many medical fields, such as neurology and oncology. While supervised models perform well in this setting, they fail to leverage unlabeled datasets and struggle with missing modalities — a frequent challenge in clinical settings. To bridge these gaps, we introduce MM-DINOv2, a novel and efficient framework that adapts the pre-trained vision foundation model DINOv2 for multi-modal medical imaging. Our approach incorporates multi-modal patch embeddings, enabling vision foundation models to effectively process multi-modal imaging data. To address missing modalities, we employ full-modality masking, which encourages the model to learn robust cross-modality relationships. Furthermore, we leverage semi-supervised learning to harness large unlabeled datasets, enhancing both the accuracy and reliability of medical predictions. Applied to glioma subtype classification from multi-sequence brain MRI, our method achieves a Matthews Correlation Coefficient (MCC) of 0.6 on an external test set, surpassing state-of-the-art supervised approaches by +11.1%."

summary: "A framework that adapts the DINOv2 vision foundation model to multi-modal medical imaging via multi-modal patch embeddings and full-modality masking — robust to missing modalities and evaluated on glioma subtyping from multi-sequence brain MRI."

tags:
  - Foundation Models
  - Multi-Modal Learning
  - Brain MRI
featured: true

url_pdf: "https://arxiv.org/pdf/2509.06617"
url_code: "https://github.com/daniel-scholz/mm-dinov2"

image:
  caption: "MM-DINOv2 architecture (from the paper)."
  focal_point: "Center"
  preview_only: false

projects: []
---
&#8203;Selected for a young-researcher talk at the EMERGE workshop, MICCAI 2025.
