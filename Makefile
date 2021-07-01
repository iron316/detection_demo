setup-dataset:
	wget "https://github.com/Be4rR/JapaneseCoins/blob/main/coins.zip?raw=true" -O coins.zip
	unzip coins.zip
	rm coins.zip

setup-python-poetry: pyproject.toml poetry.lock
	poetry install
	poetry run pip install torch==1.8.0+cu101 torchvision==0.9.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html
	poetry run pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu101/torch1.8/index.html

setup-python-requirements: requirements.txt
	pip install -r requirements.txt
	pip install torch==1.8.0+cu101 torchvision==0.9.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html
	pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu101/torch1.8/index.html

run-notebook:
	poetry run jupyter notebook --port 8866 --ip="*"

