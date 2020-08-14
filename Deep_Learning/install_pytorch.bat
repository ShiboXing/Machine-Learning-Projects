call conda install pytorch torchvision cudatoolkit=10.2 torchtext -c pytorch -y
call conda install -c conda-forge jupyter matplotlib ipdb -y
python -m ipykernel install --user --name base 