###

### Vars
PYTHON=.env/bin/python 
PIP=.env/bin/pip 
IMAGE="testapp"
TAG="latest"


info:
		@cat README.md
setup:
		echo -e"\nInstalling prerequisites\n"
		sudo apt update > /dev/null || echo "Something is wrong, check it."
		sudo apt install -y docker.io docker-compose python3-dev python3-venv > /dev/null
		echo -e "\nPackages: \ndocker.io docker-compose python3-dev python3-venv "
localEnv:
		python3 -m venv .env
		$(PIP) install --no-cache-dir -r requirements.txt
buildImage:
		sudo docker build --no-cache . -t $(IMAGE):$(TAG)
run:
		sudo docker-compose -f docker-compose.yml up -d
		sudo docker ps
destroy:
		sudo docker-compose -f docker-compose.yml down
