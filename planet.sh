device=6
TARGET=LIPIDS_SCHEDULER4

### For Ligand Module
BS=1280
EXPERIMENT='LM/'

CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 1 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --num_features 8 --lr 5e-3 --hidden_channels 128 --num_layers 20
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 2 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --num_features 8 --lr 5e-3 --hidden_channels 128 --num_layers 20
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 3 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --num_features 8 --lr 5e-3 --hidden_channels 128 --num_layers 20
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 4 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --num_features 8 --lr 5e-3 --hidden_channels 128 --num_layers 20
# Test
python /media/SSD6/naparicioc/LIPIDS_classification/ensamble.py --device $device --batch_size 30 --save $WEIGHTS_PATHS$TARGET --freeze_molecule --use_gpu --conv_encode_edge --learn_t --balanced_loader --nclasses 8 --num_features 8 --hidden_channels 128 --num_layers 20

