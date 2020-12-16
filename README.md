# Bayesian-Fusion
 Codes for Bayesian Fusion for Infrared and Visible Images (Signal Processing 2020)

[*[Paper]*](https://www.sciencedirect.com/science/article/pii/S0165168420302772), [*[ArXiv]*](https://arxiv.org/abs/2005.05839)

## Abstract

Infrared and visible image fusion has been a hot issue in image fusion. In this task, a fused image containing both the gradient and detailed texture information of visible images as well as the thermal radiation and highlighting targets of infrared images is expected to be obtained. In this paper, a novel Bayesian fusion model is established for infrared and visible images. In our model, the image fusion task is cast into a regression problem. To measure the uncertainty in a better manner, we formulate the model in a hierarchical Bayesian manner. Aiming at making the fused image satisfy the human visual system, the model incorporates the total-variation (TV) penalty. Subsequently, the model is efficiently inferred by the expectation-maximization (EM) algorithm, where the fusion weight can be automatically inferred and adaptive to the source images. The performance of our algorithm is investigated and compared with several state-of-the-art approaches on TNO and NIR image fusion datasets. In comparison with other methods, the novel model can generate better fused images with highlighting targets and rich texture details, which may potentially improve the reliability of the target automatic detection and recognition system.



![bayes_model](image\bayes_model.png)