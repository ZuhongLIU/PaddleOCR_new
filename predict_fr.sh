cd /home/zuhong/PaddleOCR_new
pwd
rm -fr a.log
rm -fr ocr.txt
conda activate zuhong
export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64:/home/zuhong/.conda/envs/DLC-GPU/lib:/home/zuhong/.conda/envs/zuhong/lib:
/opt/anaconda3/bin/python3 ./tools/infer/predict_rec.py --image_dir="../OCR_testImage/ocr.jpg" --rec_model_dir="./inference/rec_infer_french/" --rec_char_type="french" --rec_char_dict_path="./ppocr/utils/dict/french_dict.txt" > a.log 
cat a.log |  grep 0. | awk -F\' '{print $2}' > ocr.txt


