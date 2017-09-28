# Cross-Selective-Domain-Transfer
IEEE TIFS Paper Codes

The public models are realized with MatConvNet library.

1-DataSet Configuration
PolyU NIR Face： Due to the copyright preservation, it should be downloaded and made into imdb format by yourself for model training and testing, and the link is http://www4.comp.polyu.edu.hk/~biometrics/
Lab-made hand-dorsa vein: It is provided with imdb format, and the original .jpg files is under further improvement.
PolyU palmprint. Due to the copyright preservation, it should be downloaded and made into imdb format by yourself for model training and testing, and the link is http://www4.comp.polyu.edu.hk/~biometrics/


2-Model Configuration
.m functions under 'Fine-tune VGG' files provide interface for fine-tuning VGG model
Note that MatConvNet and VLfeat is needed and should be downloaded and compiled by yourself
///
.m functions under 'ResNet-Finetune-Train' files provide interface for training ResNet from scratch with different layer configuration and also differrent datasets are supported, and also ResNet fine-tune is supported only with some simple modification.
Note that MatConvNet and VLfeat is needed and should be downloaded and compiled by yourself

3-Classifier Implementation
LDM code: Due to the copyright preservation, the implementation of LDM could be referenced from http://lamda.nju.edu.cn/code_ODM.ashx

!Any question, please send email to wangguoqingcumt@hotmai.com.
