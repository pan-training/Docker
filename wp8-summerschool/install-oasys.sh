#!/bin/bash
# ver 0.4
# 12.03.2022
# author Marco De Simone marco.desimone@ceric-eric.eu

export DEBIAN_FRONTEND=noninteractive

if [ -x $(which lsb_release) ] ; then
  codename=`lsb_release -sc`
else # default fallback to bionic
  codename="bionic"
fi
apt-get update
apt-get install -y curl
curl http://xmi-apt.tomschoonjans.eu/xmi.packages.key | sudo apt-key add -
distributor=`lsb_release  -is| awk '{print tolower($0)}'`
apt-get install -y fontconfig-config \
		   fonts-dejavu-core \
		   libasound2 \
		   libasound2 \
		   libegl1 \
		   libegl1 \
		   libevdev2 \
		   libfontconfig1 \
		   libfontenc1 \
		   libfreetype6 \
		   libgl1-mesa-glx \
		   libinput-bin \
		   libinput10 \
		   libmtdev1 \
		   libnss-sss \
		   libpam-sss \
		   libpng16-16 \
		   libutempter0 \
		   libwacom-bin \
		   libwacom-common \
		   libwacom2 \
		   libxaw7 \
		   libxcb-icccm4 \
		   libxcb-image0 \
		   libxcb-keysyms1 \
		   libxcb-randr0 \
		   libxcb-render-util0 \
		   libxcb-shape0 \
		   libxcb-util1 \
		   libxcb-xinerama0 \
		   libxcb-xkb1 \
		   libxcomposite1 \
		   libxcursor1 \
		   libxcursor1 \
		   libxft2 \
		   libxi6 \
		   libxinerama1 \
		   libxkbcommon-x11-0 \
		   libxmu6 \
		   libxpm4 \
		   libxrandr2 \
		   libxss1 \
		   libxt6 \
		   libxtst6 \
		   libxv1 \
		   libxxf86dga1 \
		   locales \
		   locales-all \
		   python-sip \
		   strace \
		   unzip \
		   vim \
		   git \
		   qt5-default \
		   wget \
		   x11-utils \
		   xbitmaps \
		   xdg-utils \
		   xkb-data \
		   xterm \
		   vim \
		   gtk3-nocsd


### from prepare script
# SCIPY
apt-get -y install libblas-dev mesa-common-dev liblapack-dev libatlas-base-dev build-essential gfortran-7
# MATPLOTLIB
apt-get -y install libfreetype6 libfreetype6-dev
apt-get install --reinstall libxcb-xinerama0
# XRAYLIB
apt-get -y install swig
source /opt/conda/bin/activate
#conda update -n base conda

conda create --name oasys python=3.7
conda activate oasys
#conda install -c anaconda -y six numpy matplotlib scipy 
conda install -c conda-forge -y xraylib
conda env list

python -m pip install --no-cache-dir numpy
python -m pip install --no-cache-dir scipy
python -m pip install --no-cache-dir six
python -m pip install --no-cache-dir matplotlib
python -m pip install --no-cache-dir crystalpy
python -m pip install --no-cache-dir resources --upgrade

python -m pip install --no-cache-dir oasys1
python -m pip install --no-cache-dir OASYS1-ShadowOui
python -m pip install --no-cache-dir OASYS1-SRW
python -m pip install --no-cache-dir OASYS1-XOPPY
python -m pip install --no-cache-dir OASYS1-Syned
python -m pip install --no-cache-dir OASYS1-WOFRY
python -m pip install --no-cache-dir OASYS1-ESRF-Extensions

cd /tmp
git clone https://github.com/oasys-elettra-kit/WISEr.git
cat >/tmp/patchWiser <<EOF
--- a/WISEr/setup.py	2022-03-12 20:12:04.136612060 +0100
+++ b/WISEr/setup.py	2022-03-12 20:12:36.132659544 +0100
@@ -12,7 +12,7 @@

 NAME = 'LibWiser'

-VERSION = '0.12.10'
+VERSION = '0.12.13'
 ISRELEASED = True

 DESCRIPTION = 'Wiser kernel library'
@@ -47,8 +47,7 @@
     'numpy',
     'scipy',
     'engineering_notation',
-    'numba',
-    'pathlib'
+    'numba'
 )

 SETUP_REQUIRES = (
EOF
patch -p1 <patchWiser
echo "PATCHED WISEr"
python -m pip install --no-cache-dir /tmp/WISEr
rm -rf /tmp/WISEr
python -m pip install --no-cache-dir OASYS1-OasysWiser
python -m pip install --no-cache-dir OASYS1-ELETTRA-Extensions
python -m pip install --no-cache-dir OASYS1-Panosc


apt-get -y clean


rm -rf /root/.cache/pip
