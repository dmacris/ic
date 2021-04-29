# Docker

| Command | Description |
| :--- | :--- |
|`sudo docker info`| |
|`docker-compose up nome-do-container` | subir container|
|`docker-compose run --rm nome-do-container bash` | rodar o bash dentro do container|
|`docker ps` | exibir todos os containers rodando|
|`whoami` | mostrar usuário atual|
|`sudo chown grupo:usuario -R .` | mudar owner de arquivo criado pelo docker|
|`docker stop $(docker ps -a -q)`| para todos os containers|
|`docker rm id-do-container`| remove um container|
|`docker rm $(docker ps -a -q)`| remove todos os containers|
|`docker image rm -f id-da-imagem`| deleta uma imagem|
|`docker image rm -f $(docker image ls -a -q)`| deleta todas as imagens|

# Comandos Git

| Command | Description |
| :--- | :--- |
|`git config --global user.name "Daniel Macris` | Adiciona o nome ao git (será usado em alterações etc)|
|`git config --global user.email "email@email"`| |
|`git init` | cria novo repositório|
|`git init --bare` | cria novo repositório compartilhável|
|`git add` | adiciona mudanças locais ao stage|
|`git commit` | adiciona as mudanças do stage ao branch (-a pula o add)|
|`git diff` | exibe as mudanças ainda não commitadas|
|`git log` | exibe todas as alterações realizadas no branch (-p para exibir mais detalhes, -1,2...n para números de commit a serem exibidos)|
|`gitk` | abre os logs na interface gráfica|
|`git commit --amend -m "mensagem"` | adiciona as mudanças ao último commit em vez de criar um novo|
|`git reset HEAD nomedoarquivo` | remove arquivo do stage|
|`git checkout -- nomedoarquivo` | desfaz alterações no arquivo no ambiente local|
|`git rm` | remove arquivos do branch (similar ao git add, mas usado quando arquivos foram removidos do projeto)|
|`git tag -a nomedatag -m "nome da versao"` | cria tag com mensagem|
|`git tag -a nomedatag 0sa1209j0d90as9aj910290dasd -m "nomedaversao"` | cria tag em cima do commit indicado pelo código|
|`git show nomedatag` | mostra informações sobre a tag|
|`git checkout nomedatag` | altera os arquivos locais em conformidade com a tag indicada|
|`git tag -d nomedatag` | deleta tag|
|`git branch nomedobranch` | cria branch|
|`git checkout nomedobranch` | muda para o branch designado|
|`git merge nomedobranchfonte` | traz as alterações do branch informado|
|`git branch -d nomedobranch` | deleta o branch (servidor)|
|`git clone file:////endereço.com nomedapastadestino` | clona projeto|
|`git remote` | exibe o nome do servidor remoto do projeto|
|`git push origin master` | envia as alterações locais do branch master para o servidor remoto origin|
|`git pull - origin master` | importa as alterações do branch master do servidor origin para repositório local|
|`git fetch origin nomedobranch` | faz o pull para o branch informado (não faz o merge automaticamente para o brach atual, como faria o pull)|
|`git rebase branchdestino` | faz o "merge" entre o branch atual e o indicado (diferente do "merge" que mescla dois commit para um mesmo, o |rebase gera um novo commit com a união dos commits. Conserva os dois commits pais)|
|`HEAD` | variável para apontar o branch ou commit atual|
|`^` | referência para o commit pai|
|`git branch -f nomedobranch nomedocommit` | muda a referência do branch para o commit indicado|
|`git reset nomedocommit` | muda a referência do branch atual para o commit indicado (como se o commit nunca tivesse existido "rollback")|
|`git revert nomedocommit` | "rollback" do commit indicado (pode ser enviado pelo push que vai deletar o commit para todos (com o reset é só local))|
|`git cherry-pick commit1 commit2` | copia os commits mencionados para abaixo do HEAD atual|
|`git rebase -i nomedobranchdestino` | rebase interativo|
|`git config --global --unset credential.helper` | desabilita credential helper|
|`git config --global credential.helper cache` | habilita credential helper|
|`git config --list` | exibe configurações globais|
|`git submodule add` | adiciona um submódulo ao projeto|
|`git submodule init` | inicia o índice dos submódulos|
|`git submodule update` | atualiza os repositórios dos submódulos|
|`git commit --amend` |adiciona o que está em staging ao último commit|

**********************************************

# Rails

| Command | Description |
| :--- | :--- |
|`sqlite3 --version`|
|`gem install rails`|
|`rails -v`|
|`rails new nomedoprojeto` | cria um novo projeto rails|
|`rails s` | inicia o servidor rails|
|`rails generate migration NomeDaMigration` | cria arquivo de migration|
|`rails db:rollback`|

**********************************************



