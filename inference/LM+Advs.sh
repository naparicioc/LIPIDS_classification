WEIGHTS_PATHS='/media/SSD3/naparicioc/PLA-Net/PLANet_Final_Weigths/LM+Advs/'
DEVICE=2
python /media/SSD3/naparicioc/PLA-Net/ensamble.py --device $DEVICE --batch_size 30 --save $WEIGHTS_PATHS --freeze_molecule --use_gpu --conv_encode_edge --learn_t --balanced_loader  --binary --advs

