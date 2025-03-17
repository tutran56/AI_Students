NHẬN DIỆN HÀNH VI CỦA HỌC SINH TRONG LỚP
nhập mô tả hình ảnh tại đây
GIỚI THIỆU
Nhận diện hành vi học sinh trong lớp học sử dụng YOLOv7 là ứng dụng công nghệ AI để phát hiện hành vi như giơ tay, sử dụng điện thoại. YOLOv7 giúp nhận diện đối tượng trong ảnh/video theo thời gian thực, hỗ trợ giáo viên quản lý lớp học hiệu quả hơn. Công nghệ này giúp tăng cường sự tương tác và giám sát, nâng cao chất lượng dạy và học.

HỆ THỐNG
nhập mô tả hình ảnh tại đây

CÔNG NGHỆ SỬ DỤNG
YOLOV7

nhập mô tả hình ảnh tại đây

Hướng dẫn cài đặt và chạy
Bước 1:Thu thập dữ liệu Bước 2:Gán nhãn dữ liệu Dataset ở đây tại đây (Sử dung dataset của mình + của người khác)Bước 3:Up load file lên driveBước 4:Vào colab để train Bước 5:Liên kết colab với drive

từ google.colab nhập ổ đĩa drive.mount(’/content/drive’)

Bước 6:Tải các thư viện cần thiết

!pip cài đặt torch torchvision !pip cài đặt matplotlib !pip > cài đặt opencv-python !pip cài đặt wandb

Bước 7:Tải mã nguồn Yolov7

!git clone https://github.com/WongKinYiu/yolov7.git %cd yolov7

Bước 8:Tải trọng số Yolov7

!wget > https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7.pt > -P /content/SCB-dataset/yolov7/

Bước 9:Huấn luyện mô hình :

!python /content/yolov7/train.py \ > --data “/content/drive/MyDrive/BTL_AII/AI.v3-ai.yolov7pytorch/data.yaml” \ > --cfg “/content/yolov7/cfg/training/yolov7.yaml” \ > --weights “/content/SCB-dataset/yolov7/yolov7.pt” \ > --epochs 50 \ > --batch-size 16 \ > --img-size 640 \ > --device 0 \ > --workers 4 \ > --cache-images \ > --name Yolo7_BTL \ > --project “/content/drive/MyDrive/BTL_AII”

Bước 10:Nhận diện hành vi qua video

import subprocess cmd = [ “python3”, “/content/yolov7/detect.py”, > “–weights”, > “/content/drive/MyDrive/BTL_AII/Yolo7_BTL/weights/best.pt”, > “–source”, “/content/drive/MyDrive/Capcut/1.MOV”, “–img-size”, > “640”, “–conf-thres”, “0.1”, “–save-txt”, “–save-conf”, > “–project”, “chạy/phát hiện”, “–name”, “detect_output”, “–exist-ok” ] > result = subprocess.run(cmd, capture_output=True, text=True) > print(result.stdout) > > print(result.stderr)
