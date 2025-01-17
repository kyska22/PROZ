# Projeto Integrador DevOps - Extensão em Cloud

## Enunciado

Após implementar o cadastro de usuário, ampliamos nosso projeto integrador para incluir um sistema avançado de controle e cadastro de novos filmes. Além de utilizar CSS para estilização avançada e layout responsivo da interface de usuário, estamos integrando serviços da AWS para melhorar significativamente a funcionalidade e segurança do sistema.

### Integração da AWS

- **Adição de Machine Learning**: Implementaremos algoritmos de recomendação para personalizar a experiência dos usuários, sugerindo filmes com base nos seus gostos e preferências, aumentando o engajamento.
- **Armazenamento de Arquivos**: Utilização do Amazon S3 para armazenar imagens de capa dos filmes.
- **Banco de Dados Gerenciado**: Uso do Amazon RDS para operações CRUD e consultas complexas.
- **Segurança e Autenticação**: Integração com AWS IAM para políticas de segurança granulares.

---

## Solução e Estrutura do Projeto

### 1. Configuração Inicial
- Criação do ambiente de desenvolvimento com Node.js e instalação do **AWS SDK**.
- Configuração do servidor **Express** para gerenciar rotas e conectar ao banco de dados.

### 2. Serviços da AWS
#### a) Armazenamento no Amazon S3
- Criação de um bucket com permissões configuradas para acesso público somente leitura.
- Integração do Amazon S3 para upload e gerenciamento de imagens de capa.

#### b) Banco de Dados com Amazon RDS
- Design do esquema do banco para gerenciar filmes, usuários e preferências.
- Scripts SQL para criar tabelas e inserir dados iniciais.

#### c) Recomendação Personalizada com Machine Learning
- Treinamento de modelos utilizando TensorFlow.js ou frameworks compatíveis.
- Implementação de APIs para gerar recomendações baseadas em histórico do usuário.

#### d) Segurança com AWS IAM
- Configuração de políticas de acesso para proteger dados sensíveis e limitar privilégios.

---

## Entregáveis

1. **Documentação do Projeto**:
   - Diagrama de arquitetura detalhado com os serviços AWS.
   - Esquema do banco de dados no Amazon RDS.
   - Diagrama de classes para o gerenciamento de filmes e integração de Machine Learning.
   - Manual do usuário para utilização das funcionalidades.

2. **Implementação do Sistema**:
   - Código-fonte com:
     - Cadastro e login de usuários.
     - Sistema de gerenciamento de filmes.
     - Recomendação personalizada.
     - Integração com Amazon S3, RDS e AWS IAM.

3. **Scripts de Configuração**:
   - Scripts para criação e configuração dos serviços AWS.

4. **Demonstração do Sistema**:
   - Apresentação funcional:
     - Operações CRUD no banco.
     - Exibição de imagens armazenadas no S3.
     - Algoritmos de recomendação.

5. **Explicação do Código-Fonte**:
   - Descrição das integrações com AWS, Machine Learning e segurança.

---

### Referências

