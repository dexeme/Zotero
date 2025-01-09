# Zotero

Este template facilita a sincronização dos arquivos de uma instalação local do Zotero utilizando o GitHub como serviço de
armazenamento em nuvem.

## Instalação

Primeiramente, crie um repositório para uso pessoal a partir deste template. Após isso, clone seu repositório em sua máquina local.
O repositório local deverá estar localizado em `~/Zotero`.

```
cd ~/
git clone <url-do-seu-repositorio>
```

Para executar pela primeira vez, execute o shellscript diretamente.

```
~/Zotero/zotero.sh
```

Isso baixará todos os arquivos do Zotero automaticamente e abrirá o programa. Após a primeira execução,
um atalho poderá ser usado para iniciar o Zotero:

```
zotero
```

Este atalho executa o shellscript apresentado acima. Antes de iniciar o Zotero, o script executa um `git pull`
para baixar os arquivos remotos atualizados. Após terminar de usar o Zotero, feche-o normalmente e
as mudanças serão salvas no seu repositório do GitHub automaticamente.
Entretanto, evite deixar o Zotero aberto em mais de um dispositivo ao mesmo tempo, visto que isto pode ocasionar
em conflitos se múltiplas sessões realizarem alterações em paralelo.
