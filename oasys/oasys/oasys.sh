#!/bin/bash
export QT_X11_NO_MITSHM=1
export QT_XCB_GL_INTEGRATION=xcb_egl
source /opt/conda/bin/activate
conda activate oasys
python -m oasys.canvas -l4 --force-discovery
