# Documento de Requisitos – SmartStock

## 1. Objetivo do sistema
O SmartStock é uma plataforma web para gestão de estoque. Ela permite cadastrar produtos, registrar entradas e saídas, acompanhar o estoque mínimo, gerar relatórios e visualizar indicadores em um dashboard, com integração futura com Inteligência Artificial para consultas e automações.

## 2. Problema que será resolvido
Muitas empresas controlam o estoque em planilhas ou anotações. Isso causa:
- falta de produtos por não perceber que o estoque está baixo;
- excesso de compras e produtos parados;
- erros de digitação e divergência entre o estoque real e o registrado;
- falta de histórico das movimentações;
- dificuldade para gerar relatórios e tomar decisões.

## 3. Público-alvo
- Pequenas e médias empresas (comércios, distribuidoras, pequenas indústrias);
- Gestores e donos de negócio que precisam acompanhar indicadores;
- Estoquistas e almoxarifes que registram entradas e saídas.

## 4. Funcionalidades do sistema

### 4.1 Requisitos funcionais
| Código | Requisito |
|---|---|
| RF01 | Login de usuário com e-mail e senha |
| RF02 | Cadastrar produtos (nome, categoria, quantidade, estoque mínimo, preço) |
| RF03 | Consultar produtos com busca por nome e filtro por categoria |
| RF04 | Atualizar dados de produtos |
| RF05 | Excluir produtos |
| RF06 | Registrar entrada de estoque (aumenta a quantidade) |
| RF07 | Registrar saída de estoque (diminui a quantidade, sem permitir ficar negativo) |
| RF08 | Exibir histórico de movimentações |
| RF09 | Dashboard com indicadores (total de produtos, valor em estoque, produtos abaixo do mínimo, movimentações do dia) |
| RF10 | Controlar estoque mínimo de cada produto |
| RF11 | Gerar alertas de reposição quando a quantidade ficar igual ou abaixo do mínimo |
| RF12 | Gerar relatórios de estoque e de movimentações por período, com exportação |
| RF13 | Tela de configurações (dados do usuário, notificações, integrações) |
| RF14 | Integração futura com agente de IA e N8N para consultas e automações (ex.: enviar alerta de reposição por e-mail/WhatsApp) |

### 4.2 Requisitos não funcionais
| Código | Requisito |
|---|---|
| RNF01 | Sistema web acessível pelo navegador, responsivo |
| RNF02 | Senhas armazenadas com criptografia (hash) |
| RNF03 | Comunicação entre front-end e back-end via API REST em JSON |
| RNF04 | Dados armazenados em banco de dados relacional |
| RNF05 | Interface simples e intuitiva, seguindo boas práticas de UX/UI |
| RNF06 | Código versionado no GitHub |

### 4.3 Casos de uso
| Ator | Caso de uso |
|---|---|
| Usuário | Fazer login |
| Usuário | Gerenciar produtos (cadastrar, consultar, atualizar, excluir) |
| Usuário | Registrar entrada/saída de estoque |
| Usuário | Visualizar dashboard e alertas |
| Usuário | Gerar relatórios |
| Sistema (N8N/IA) | Enviar alertas automáticos de reposição |
| Usuário | Fazer perguntas ao agente de IA sobre o estoque |

## 5. Benefícios da solução
- Controle do estoque em tempo real;
- Menos falta e menos excesso de produtos, graças aos alertas de reposição;
- Histórico completo de entradas e saídas;
- Relatórios prontos para apoiar decisões;
- Menos erros manuais;
- Automação de tarefas com IA e N8N.
