<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Readme.</title>
  <link rel="stylesheet" href="https://stackedit.io/style.css" />
</head>

<body class="stackedit">
  <div class="stackedit__html"><h1 id="nhận-diện-hành-vi-của-học-sinh-trong-lớp">NHẬN DIỆN HÀNH VI CỦA HỌC SINH TRONG LỚP</h1>
<h2 id="section"><img src="https://cdn.haitrieu.com/wp-content/uploads/2021/10/Logo-DH-Dai-Nam-.png" alt="nhập mô tả hình ảnh tại đây"></h2>
<h2 id="giới-thiệu">GIỚI THIỆU</h2>
<p>Nhận diện hành vi học sinh trong lớp học sử dụng YOLOv7 là ứng dụng công nghệ AI để phát hiện hành vi như giơ tay, sử dụng điện thoại. YOLOv7 giúp nhận diện đối tượng trong ảnh/video theo thời gian thực, hỗ trợ giáo viên quản lý lớp học hiệu quả hơn. Công nghệ này giúp tăng cường sự tương tác và giám sát, nâng cao chất lượng dạy và học.</p>
<h2 id="hệ-thống">HỆ THỐNG</h2>
<p><img src="https://files.oaiusercontent.com/file-F4sNAHdpVj6oVmVnhEnDat?se=2025-03-17T13:27:07Z&amp;sp=r&amp;sv=2024-08-04&amp;sr=b&amp;rscc=max-age=299,%20immutable,%20private&amp;rscd=attachment;%20filename=d177b03d-c42f-455c-b067-24184e394326&amp;sig=uJ%2bZuG1fWVKkmMMVy/DplRvis1GVhTwJF7Ez075AVZg=" alt="nhập mô tả hình ảnh tại đây"></p>
<h2 id="công-nghệ-sử-dụng">CÔNG NGHỆ SỬ DỤNG</h2>
<p>YOLOV7</p>
<p><img src="https://github.com/ultralytics/docs/releases/download/0/yolov7-comparison-sota-object-detectors.avif" alt="nhập mô tả hình ảnh tại đây"></p>
<h2 id="hướng-dẫn-cài-đặt-và-chạy">Hướng dẫn cài đặt và chạy</h2>
<p>Bước 1:Thu thập dữ liệu Bước 2:Gán nhãn dữ liệu Dataset ở đây <a href="https://universe.roboflow.com/ttnt-nyz2m/ai-fxy4m/dataset/2">tại đây</a> (Sử dung dataset của mình + của người khác)Bước 3:Up load file lên driveBước 4:Vào colab để train Bước 5:Liên kết colab với drive</p>
<blockquote>
<p>từ google.colab nhập ổ đĩa drive.mount(’/content/drive’)</p>
</blockquote>
<p>Bước 6:Tải các thư viện cần thiết</p>
<blockquote>
<p>!pip cài đặt torch torchvision !pip cài đặt matplotlib !pip &gt;         cài đặt opencv-python !pip cài đặt wandb</p>
</blockquote>
<p>Bước 7:Tải mã nguồn Yolov7</p>
<blockquote>
<p>!git clone <a href="https://github.com/WongKinYiu/yolov7.git">https://github.com/WongKinYiu/yolov7.git</a> %cd yolov7</p>
</blockquote>
<p>Bước 8:Tải trọng số Yolov7</p>
<blockquote>
<p>!wget &gt; <a href="https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7.pt">https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7.pt</a> &gt; -P /content/SCB-dataset/yolov7/</p>
</blockquote>
<p>Bước 9:Huấn luyện mô hình :</p>
<blockquote>
<p>!python /content/yolov7/train.py \ &gt; --data “/content/drive/MyDrive/BTL_AII/AI.v3-ai.yolov7pytorch/data.yaml” \ &gt; --cfg “/content/yolov7/cfg/training/yolov7.yaml” \ &gt; --weights “/content/SCB-dataset/yolov7/yolov7.pt” \ &gt; --epochs 50 \ &gt; --batch-size 16 \ &gt; --img-size 640 \ &gt; --device 0 \ &gt; --workers 4 \ &gt; --cache-images \ &gt; --name Yolo7_BTL \ &gt; --project “/content/drive/MyDrive/BTL_AII”</p>
</blockquote>
<p>Bước 10:Nhận diện hành vi qua video</p>
<blockquote>
<p>import subprocess cmd = [ “python3”, “/content/yolov7/detect.py”, &gt; “–weights”, &gt; “/content/drive/MyDrive/BTL_AII/Yolo7_BTL/weights/best.pt”, &gt; “–source”, “/content/drive/MyDrive/Capcut/1.MOV”, “–img-size”, &gt; “640”, “–conf-thres”, “0.1”, “–save-txt”, “–save-conf”, &gt; “–project”, “chạy/phát hiện”, “–name”, “detect_output”, “–exist-ok” ] &gt; result = subprocess.run(cmd, capture_output=True, text=True) &gt; print(result.stdout) &gt; &gt; print(result.stderr)</p>
</blockquote>
</div>
</body>

</html>
