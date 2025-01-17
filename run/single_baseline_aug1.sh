name='single_baseline_aug1'
config='configs/single_baseline_aug1.yaml'

epo='400'
batch_size='8'
freeze='0'
delay='120'
warm='40'
lr='0.01'

python3 main.py --name ${name} \
--config ${config} \
--logs-dir logs/${name}_lr${lr}_freeze${freeze}_warm${warm}_decay-${delay} \
TRAIN.BATCH_SIZE ${batch_size} \
TRAIN.LR.BASE_LR ${lr} \
TRAIN.FREEZE_EPOCH ${freeze} \
TRAIN.LR.DELAY ${delay} \
TRAIN.LR.WARMUP_EPOCH ${warm} \
TRAIN.EPOCH ${epo} \
