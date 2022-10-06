cd /home/zuhong/PaddleOCR_new
pwd
conda activate zuhong
export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64:/home/zuhong/.conda/envs/DLC-GPU/lib:/home/zuhong/.conda/envs/zuhong/lib:
/opt/anaconda3/bin/python3 ./tools/infer/predict_system.py --image_dir="/home/zuhong/OCRimage/testOCR.png" --det_model_dir="./inference/ch_ppocr_mobile_v2.0_det_infer/"  --rec_model_dir="./inference/rec_infer_myIAM/" --cls_model_dir=./inference/ch_ppocr_mobile_v2.0_cls_infer/ --use_angle_cls=False --use_space_char=True

