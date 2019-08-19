# Instala o Elixir no computador
brew install elixir

# Baixa e compila o language-server
git clone https://github.com/JakeBecker/elixir-ls.git
cd elixir-ls
mix deps.get
mix compile

# Instala o language-server de elixir para habilitar autocomplete e lint
mkdir -p ~/.elixir
mix elixir_ls.release -o ~/.elixir
cd ..
rm -rf ./elixir-ls
