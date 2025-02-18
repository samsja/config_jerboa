apt update -y
apt install gh screen neovim nvtop -y
pip install -U poetry
gh auth login
gh repo clone jina-ai/jerboa
cd jerboa
pwd
poetry config virtualenvs.create false \
     && poetry install --no-interaction --no-ansi

poetry run pip install torch
curl -sS https://starship.rs/install.sh | sh 
echo 'eval "$(starship init bash)"' >> ~/.bashrc
source .bashrc
