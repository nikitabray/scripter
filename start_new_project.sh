read -p "Name of the project: " prname
read -p "Python version: " python
virtenv_name=${prname}
folder_name=${virtenv_name^^}
pv=${python}
mkdir dev/$folder_name
cd dev/$folder_name
virtualenv $virtenv_name --python=/usr/bin/python$pv
mkdir .vim
echo {\"python.pythonPath\": \"~/dev/$folder_name/$virtenv_name/bin/python\"} > .vim/coc-settings.json
source ~/dev/$folder_name/$virtenv_name/bin/activate
python -m pip install --upgrade pip
pip install jedi
