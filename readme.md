
# Live Reload

Pequeno serviço em `.sh` que monitora o diretório do seu projeto em busca de 
modificações de delete, update e create, caso ocorra alguma dessas ações 
citadas a aplicação é reiniciada automaticamente aplicando sua alteração 
sem que haja interação manual.


## Documentação

É necessario passar 2 parâmetros o primeiro do `compilador` ou `executor`, 
o segundo nome do aquivo `main`, `index` ou `app`.

## Dependências

- `inotify-tools`
- `procps`


alpine `OS`
```bash
  apk add inotify-tools && apk add --no-cache procps
```

## Executando

Clone o projeto

```bash
  git clone https://www.github.com/live-reload
```

abra a pasta do projeto

```bash
  cd live-reload
```

Utilizando com alpine `OS`

```bash
  sh live-reload.sh $param1 $param2
```

Utilizando com ubuntu `OS`

```bash
  bash live-reload.sh $param1 $param2
```

Exemplo prático

```bash
  bash live-reload.sh python main.py
```


## Authors

- [CaioDePaula](https://www.github.com/CaioDePaula)


