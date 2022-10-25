device=3
TARGET=LIPIDS1

### For Ligand Module
BS=512
EXPERIMENT='LM/BINARY_'

CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 1 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --lr 5e-3 --num_layers 25 --hidden_channels 256 --num_features 8
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 2 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --lr 5e-3 --num_layers 25 --hidden_channels 256 --num_features 8
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 3 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --lr 5e-3 --num_layers 25 --hidden_channels 256 --num_features 8
CUDA_VISIBLE_DEVICES=$device python main.py --use_gpu --conv_encode_edge --learn_t --cross_val 4 --save $EXPERIMENT$TARGET --batch_size $BS --balanced_loader --batch_size $BS --nclasses 8 --lr 5e-3 --num_layers 25 --hidden_channels 256 --num_features 8
# Test
CUDA_VISIBLE_DEVICES=$DEVICE python ensamble.py --batch_size 30 --save $EXPERIMENT$TARGET --use_gpu --conv_encode_edge --balanced_loader --nclasses 8 --lr 5e-3 --num_layers 25 --hidden_channels 256 --num_features 8

