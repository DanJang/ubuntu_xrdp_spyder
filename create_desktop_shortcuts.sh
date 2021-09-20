# run 
mkdir -p /tunnel/jupyter && echo -e "[Desktop Entry]\nName=Jupyter Shortcut\nExec=/opt/miniconda/bin/jupyter notebook --NotebookApp.token='' --NotebookApp.password='' --ip='*' --NotebookApp.notebook_dir='/tunnel/jupyter/' --no-browser\nTerminal=true\nType=Application\nCategories=Utility;Application;" > /home/ubuntu/Desktop/Jupyter.desktop && chmod 755 /home/ubuntu/Desktop/Jupyter.desktop
echo -e "[Desktop Entry]\nName=Spyder Shortcut\nExec=/opt/miniconda/bin/spyder\nTerminal=false\nType=Application\nCategories=Utility;Application;" > /home/ubuntu/Desktop/Spyder.desktop 
echo -e "[Desktop Entry]\nName=Sublime Shortcut\nExec=/usr/bin/subl\nTerminal=false\nType=Application\nCategories=Utility;Application;" > /home/ubuntu/Desktop/Sublime.desktop

