# <p style="text-align: center;">kubernetes-alura

## <p style="text-align: center;">Estudando kubernetes com a Alura 

Link: https://cursos.alura.com.br/formacao-devops

Este repositório tem por finalidade armazenar os arquivos criados durante o decorrer do curso.

---
## <p style="text-align: center;">Preparando estrutura

Para instalar os pacotes para os estudos execute os comando abaixo.
```./install.sh```

---
## <p style="text-align: center;">Comandos uteis

### Inicializa o arquivo de definição yaml
```kubectl apply -f {nome_do_yaml}```
### Atualizando configurações
```kubectl apply -f {nome_do_yaml} --record```
### Excluir o arquivo de definição yaml
```kubectl delete -f {nome_do_yaml}```
### Lista os pods
```kubectl get pods```
### Lista os serviços
```kubectl get svc```
### Lista o configmap
```kubectl get configmap```
### Lista os replicaset
```kubectl get replicaset```
### Lista os deployment
```kubectl get deployment```
### Mostra o histórico de mudanças de um deployment
```kubectl rollout history deployment nginx-deployment```
### Altera a descrição do motivo da mudanças de um deployment ( controle de versionamento )
```kubectl annotate deployment nginx-deployment kubernetes.io/change-cause="Definindo a imagem com a versão latest"```
### Retornar para versão anterior
```kubectl rollout undo deployment nginx-deployment --to-revision=2```