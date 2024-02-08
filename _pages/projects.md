---
layout: page
permalink: /projects/
title: projects
description: 
nav: true
nav_order: 2
---


## T cell - epitope interactions

T cells play a critical role in our body's defence against viruses, bacteria, and even cancer.
T cells can recognize molecular fragments presented by infected or cancerous cells (the so-called epitopes) and initiate a response to eliminate them. Here is a video showing a **T cell targeting and killing a cancer cell**.

<img align="left" src="../assets/img/t_cell_killing_cancer.gif" width="300" style="border: 5px solid white;">

Unfortunately, determining which T cells can target which epitopes remains challenging, both from
computational and experimental point of views. To address this problem, I developed **[MixTCRpred](https://github.com/GfellerLab/MixTCRpred), a state-of-the-art deep learning model that takes the T cell and the epitope sequence as inputs and predicts the likelihood of their
interaction.** Accurate predictions are needed to speed up the development of treatments that aim at identifying or engineering T cells to target cancer epitopes.
Have a look at the [paper](https://www.biorxiv.org/content/10.1101/2023.09.13.557561v1) and at the code on [Github](https://github.com/GfellerLab/MixTCRpred).


## Modeling protein evolution

Over the course of evolution, genetic mutations accumulate in the DNA sequences that code for proteins. These mutations can lead to changes in protein amino acid sequences and affect their structure and function.
**Is it possible to model protein evolution, i.e. to anticipate which amino acid mutations will appear in the future?**

<img align="center" src="../assets/img/dca_covid.png" width="800" style="border: 5px solid white;">

#### SARS-CoV-2
From the beginning of the COVID-19 pandemics, mutations accumulating on SARS-CoV-2 proteins have lead to the emergence of highly infectious
and immune-evading SARS-CoV-2 variants, a major concern for public health. 
We proposed a statistical model trained on sequence data from coronaviruses circulating before the pandemic began to identify protein positions in SARS-CoV-2 proteins are more likely to undergo mutations. 
Through a retrospective analysis, we proved
that our model could accurately predict polymorphic residues that have mutated from the very first
known strain of SARS-CoV-2 (Wuhan-Hu-1) during the past years of COVID-19 pandemic, with
increased accuracy as more data becomes available. We integrated our predictions with immunological
data to pinpoint mutations that are expected to induce immune escape and thus to be over represented
in current and future SARS-CoV-2 variants of concern. Here some slides about [this project](https://bevas-epfl.github.io/pdfs/Giancarlo_Croce.pdf).
For an introduction to the problem and to our approach, see the articles on [RFI](https://www.rfi.fr/en/science-and-technology/20220214-from-the-labs-french-scientists-predict-possible-covid-mutation-sites) (in english) or [France Culture](https://www.radiofrance.fr/franceculture/podcasts/le-journal-des-sciences/le-journal-des-sciences-du-jeudi-13-janvier-2022-7412422) (in french).

#### Escherichia coli
The idea of using evolutionary sequence data to predict protein evolution can be extended to other cases beyond the SARS-CoV-2 virus. In another project we used the proteomes of 60,000 recently diverged *Escherichia coli* strains to develop the theoretical framework.
See the introductory article on [Nature Portfolio](https://communities.springernature.com/posts/deciphering-polymorphism-in-e-coli). 

