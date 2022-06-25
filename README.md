# Adaptive Dual Motion Model for Facial Micro-Expression Generation

by Xinqi Fan, Ali Shahid, and Hong Yan

## Introduction
This repository is for our work Adaptive Dual Motion Model for Facial Micro-Expression Generation.

## Usage
### Requirement
Python 3.6

PyTorch 1.6


### Download
Clone the repository:
```
git clone https://github.com/xinqi-fan/adaptive-dual-motion-model
cd adaptive-dual-motion-model
```

### Prepare data

* Please download CASME2, SMIC, and SAMM.
* Modify the path to your dataset in the following config/casme2-256.yaml, config/smic-256.yaml, config/samm-256.yaml.

### Pretrained weights

* Please find them [here](https://portland-my.sharepoint.com/:f:/g/personal/xinqifan2-c_my_cityu_edu_hk1/Epv-nDj7fnlNlv_1ulJEMSMBqYQpIPQ-Vn6HPVcBTfljBg?e=qUdCKf)

### Train the model

* Please refer to train.sh and modify the related checkpoint path.

### Test the model

* Please refer to demo.sh and modify the related paths.
* The pretrained weights can be found in the above mentioned links.

## Citation
To be updated

## Comment
We welcome any pull request for improving the code.

## Acknowledge
The code is developed based on [first-order-motion repo](https://github.com/AliaksandrSiarohin/first-order-model).
