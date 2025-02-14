ADD file:a7268f82a86219801950401c224cabbdd83ef510a7c71396b25f70c2639ae4fa in /
CMD ["bash"]
WORKDIR /usr/src/app
/bin/sh -c chmod 777 /usr/src/app
/bin/sh -c apt update && apt-get upgrade -y
/bin/sh -c apt install libssl-dev libtesseract-dev libicu-dev libicu-dev libcairo2-dev freeglut3 freeglut3-dev libopengl0 libtiff5-dev -y
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install -y tzdata wget zip unzip
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install libreoffice -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install default-jre libreoffice-java-common -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install imagemagick -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install tesseract-ocr-all -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install ffmpeg -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install fontforge -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install calibre -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install python3-pip -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c pip install --no-cache-dir pyrogram==2.0.35 tgcrypto==1.2.3 pickle5==0.0.11 telegraph==2.1.0 pykeyboard==0.1.5 halo==0.0.31 Wand==0.6.8 tensorflow-cpu==2.9.1 requests SpeechRecognition pydub gTTS Pillow
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt-get install software-properties-common -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt update && apt-get upgrade -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c add-apt-repository universe -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt update && apt-get upgrade -y
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt install -y p7zip-full p7zip-rar
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c apt-get install -y python3-numpy python3-pydot python3-matplotlib python3-opencv python3-graphviz python3-toolz
|1 DEBIAN_FRONTEND=noninteractive /bin/sh -c wget https://github.com/bipinkrish/Colorize-Positive-Bot/releases/download/Model/model.zip && unzip model.zip && rm model.zip
/bin/sh -c pip install --no-cache-dir bs4 ttconv py2many pyzbar
/bin/sh -c apt install curl -y
/bin/sh -c curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
/bin/sh -c apt-get update
/bin/sh -c apt-get install -y cargo clang-format z3 clang
/bin/sh -c apt -y install rustfmt golang-go
/bin/sh -c apt-get install openctm-tools libzbar0 -y
/bin/sh -c curl -fsSL -o /tmp/warp-packer         https://github.com/dgiagio/warp/releases/download/v0.3.0/linux-x64.warp-packer     && install -D         --mode=755         --owner=root         --group=root         /tmp/warp-packer         /usr/local/bin     && rm /tmp/warp-packer
COPY file:fc10235c2cd942b42bdca2fd98fb57802647ab1c6544f59ecbe75b5acd2b59ef in /usr/local/bin/ 
/bin/sh -c chmod 777 /usr/local/bin/warp4j
/bin/sh -c wget https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar && warp4j JFLAP7.1.jar  && rm -r warped/ && warp4j JFLAP7.1.jar --no-optimize && rm -r warped/ && rm JFLAP7.1.jar
/bin/sh -c apt update && apt-get upgrade -y
/bin/sh -c apt install build-essential -y
/bin/sh -c curl -LO http://security.debian.org/debian-security/pool/updates/main/c/chromium/chromium-common_132.0.6834.159-1~deb12u1_arm64.deb
/bin/sh -c apt-get install -y ./chromium-common_132.0.6834.159-1~deb12u1_arm64.deb
/bin/sh -c rm chromium-common_132.0.6834.159-1~deb12u1_arm64.deb
/bin/sh -c CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` &&     mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION &&     curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip &&     unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION &&     rm /tmp/chromedriver_linux64.zip &&     chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver &&     ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
/bin/sh -c apt install chromium-browser xvfb -y
/bin/sh -c apt update && apt-get upgrade -y
/bin/sh -c pip install --no-cache-dir pyinstaller asteval arrow plotly kaleido websocket-client

RUN yarn install --production --ignore-engines
RUN apt install iputils-ping -y

COPY . .
RUN chmod 777 c41lab.py negfix8 tgsconverter c4go
RUN chmod 777 / ~ .
RUN pip install --no-cache-dir -r requirements.txt

ENV QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"

CMD flask run -h 0.0.0.0 -p 10000 & python3 main.py
