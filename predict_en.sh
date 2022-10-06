cd /home/zuhong/PaddleOCR_new
pwd
rm -fr ocr.txt
rm -fr a.log
source /opt/anaconda3/etc/profile.d/conda.sh
conda activate zuhong
export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64:/home/zuhong/.conda/envs/DLC-GPU/lib:/home/zuhong/.conda/envs/zuhong/lib:
/opt/anaconda3/bin/python3 ./tools/infer/predict_rec.py --image_dir="../OCR_testImage/ocr.jpg" --rec_model_dir="./inference/rec_infer_myIAM/" --rec_char_type="EN" --rec_char_dict_path="./ppocr/utils/en_dict.txt" > a.log
cat a.log |  grep result | awk '{print $6}' > ocr.txt


