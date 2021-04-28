# Bayesian-Fusion
 **Codes for *"Bayesian Fusion for Infrared and Visible Images"* (Signal Processing 2020)**

- [*[Paper]*](https://www.sciencedirect.com/science/article/pii/S0165168420302772)
- [*[ArXiv]*](https://arxiv.org/abs/2005.05839)

## Citation

*[Zixiang Zhao](https://zhaozixiang1228.github.io/), [Shuang Xu](https://xsxjtu.github.io/), [Chunxia Zhang](https://scholar.google.com/citations?user=b5KG5awAAAAJ&hl=zh-CN) and [Junmin Liu](https://scholar.google.com/citations?user=C9lKEu8AAAAJ&hl=zh-CN), [Jiangshe Zhang](http://gr.xjtu.edu.cn/web/jszhang), Bayesian fusion for infrared and visible images, Signal Processing, Volume 177, 2020, 107734, ISSN 0165-1684, https://doi.org/10.1016/j.sigpro.2020.107734.*

```
@article{ZHAO2020Bayesian,
    title = {Bayesian fusion for infrared and visible images},
    author = {Zixiang Zhao and Shuang Xu and Chunxia Zhang and Junmin Liu and Jiangshe Zhang},
    journal = {Signal Processing},
    volume = {177},
    pages = {107734},
    year = {2020},
    issn = {0165-1684},
    doi = {https://doi.org/10.1016/j.sigpro.2020.107734},    
}
```

## Abstract

Infrared and visible image fusion has been a hot issue in image fusion. In this task, a fused image containing both the gradient and detailed texture information of visible images as well as the thermal radiation and highlighting targets of infrared images is expected to be obtained. In this paper, a novel Bayesian fusion model is established for infrared and visible images. In our model, the image fusion task is cast into a regression problem. To measure the uncertainty in a better manner, we formulate the model in a hierarchical Bayesian manner. Aiming at making the fused image satisfy the human visual system, the model incorporates the total-variation (TV) penalty. Subsequently, the model is efficiently inferred by the expectation-maximization (EM) algorithm, where the fusion weight can be automatically inferred and adaptive to the source images. The performance of our algorithm is investigated and compared with several state-of-the-art approaches on TNO and NIR image fusion datasets. In comparison with other methods, the novel model can generate better fused images with highlighting targets and rich texture details, which may potentially improve the reliability of the target automatic detection and recognition system.

## Notes

In 'demo.m' file, you will find how to generate the fuison image.

The function of our *Bayesian Fusion* method can be found in 'BayesFusion.m'.

## Bayesian Fusion Methods

### Illustration of our Bayesian graph model.

<img src="image//bayes_model.png" alt="bayes_model" title="Illustration of our Bayesian graph model." align=center width="50%" />

### Qualitative fusion results.

<img src="image//output_image.png" width="90%" align=center />



### Quantitative  fusion results.

<img src="image//Quantitative_result.png" width="70%" align=center />

## Related Work

- Zixiang Zhao, Shuang Xu, Chunxia Zhang, Junmin Liu, Jiangshe Zhang and Pengfei Li, *DIDFuse: Deep Image Decomposition for Infrared and Visible Image Fusion.* IJCAI 2020: 970-976, https://www.ijcai.org/Proceedings/2020/135.

- Zixiang Zhao, Shuang Xu, Jiangshe Zhang, Chengyang Liang, Chunxia Zhang and Junmin Liu, "Efficient and Model-Based Infrared and Visible Image Fusion via Algorithm Unrolling," in IEEE Transactions on Circuits and Systems for Video Technology, doi: 10.1109/TCSVT.2021.3075745, https://ieeexplore.ieee.org/document/9416456.
