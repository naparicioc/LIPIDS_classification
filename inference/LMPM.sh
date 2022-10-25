WEIGHTS_PATHS='/media/SSD3/naparicioc/PLA-Net/PLANet_Final_Weigths/LMPM/'
#WEIGHTS_PATHS='/media/SSD1/pruiz/PLA-Net/ScientificReports/LMPM'
DEVICE=3
python /media/SSD3/naparicioc/PLA-Net/ensamble.py --device $DEVICE --batch_size 60 --save $WEIGHTS_PATHS --freeze_molecule --use_gpu --conv_encode_edge --learn_t --balanced_loader  --binary --use_prot

