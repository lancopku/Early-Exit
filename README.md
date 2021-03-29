# Early Exit

Code for the paper: *A Global Past-Future Early Exit Method for Accelerating Inference of Pre-trained Language Models*.(NAACL-HLT 2021)

## Environment

Python==3.8.1

PyTorch==1.4.0

Transformers==2.5.1

GPU: 2080Ti

## Usage

Our code is based on Huggingface's transformers, so you should install transformers first.

Before running code, you should download the GLUE datasets, and put them in directory ./glue_data/$TASK, the original dataset can be downloaded from https://gluebenchmark.com/tasks.

There are five scripts in the  folder, which can be run from the repo root, the functions of these scripts are:

### Training

#### finetune_all.sh

This is for fine-tuning on all datasets, and the hyper-parameters of BERT are provided in this script, you can direct reproduce our experiment results by running:

```
bash finetune_all.sh
```

the resulting model will be saved in ./saved_models.

#### finetune_bert.sh

This is for fine-tuning BERT backbone. And you can run this script by:

```
bash finetune_bert.sh $TASK $SAVE_STEPS $FREEZED_LAYERS $BSZ $GRADIENT_ACCUMULATION_STEPS $LR
```

#### finetune_roberta.sh

This is for fine-tuning RoBERTa backbone, the usage of this script is same with finetune_bert.sh.

#### finetune_albert.sh

Similar with finetune_roberta.sh.

### Evaluating

#### eval.sh

Evaluate of saved_models, you should first choose the best checkpoint on dev set manually and put it on it's parent directory, and then run this script by:

```
bash eval.sh $TASK $EXIT_ENTROPY $FREEZED_LAYERS
```

