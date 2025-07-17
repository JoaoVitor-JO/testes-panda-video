
# 🧪 Testes QA – Panda Vídeo (API + E2E)

Este projeto contém as entregas do desafio técnico proposto para a vaga de **Quality Assurance (QA)** na **Panda Vídeo**. Ele foi dividido em duas partes principais:  
✅ **Testes de API** (com Postman)  
✅ **Automação E2E** (com Robot Framework)  

---

## 📁 **Estrutura do Projeto**

A organização foi planejada para manter **clareza** e **facilidade de execução**:

```
/Teste API e Postman/
  ├── Planejamento/         # Cenários de teste (Gherkin)
  ├── Bugs/                 # Relatórios de bugs encontrados
  ├── Resultados/           # Excel com os resultados das execuções
  ├── Execução/
  │   ├── Postman_Collection.json   # Collection do Postman
  │   └── Postman_Environment.json  # Environment do Postman
  └── Imagens/              # Evidências (prints)

/Teste E2E Robot/
  ├── testes_saucedemo.robot # Automação E2E cobrindo login, carrinho e compra
```

---

## 💡 **Estratégia dos Testes**

- **Testes de API**:
  - Baseados na documentação da Panda Vídeo API.
  - Cenários escritos em **Gherkin** para melhor legibilidade.
  - Execução via **Postman**, validando:
    - Status codes (200, 400, 401, etc.)
    - Mensagens de erro
    - Funcionalidades CRUD no endpoint `/folders`.

- **Automação E2E**:
  - Desenvolvida com **Robot Framework** + **SeleniumLibrary**.
  - Fluxos cobertos:
    - Login no [SauceDemo](https://www.saucedemo.com/)
    - Adição de itens no carrinho
    - Checkout e finalização de compra

---

## 🛠️ **Ferramentas e Dependências**

| Ferramenta                     | Uso                          |
|--------------------------------|-----------------------------|
| Postman                        | Testes de API              |
| Robot Framework                | Automação de testes E2E    |
| SeleniumLibrary                | Interação com o navegador  |
| WebDriver (Firefox por padrão) | Execução no navegador      |


---

## 🔧 **Como Executar os Testes**

### ✅ **1. Testes de API com Postman**
1. Baixe os arquivos da pasta **`Teste API e Postman/Execução`**:
   - `Postman_Collection.json`
   - `Postman_Environment.json`

2. Abra o **Postman** → **Importe** a Collection e o Environment.

3. Configure a variável `api_key` no Environment com sua chave válida.

4. Execute os testes usando o **Collection Runner**:
   - Selecione a Collection
   - Escolha o Environment
   - Clique em **Run**

---

### ✅ **2. Automação E2E com Robot Framework**
#### **Pré-requisitos**
- Python instalado
- Robot Framework instalado (`pip install robotframework`)
- SeleniumLibrary instalada (`pip install robotframework-seleniumlibrary`)
- WebDriver compatível com o navegador (Firefox por padrão)

#### **Execução**
1. Abra o terminal e navegue até a pasta:
   ```bash
   cd "Teste E2E robot"
   ```

2. Execute os testes diretamente no VS Code:
   - Abra o arquivo `test.robot`.
   - Clique no ícone ▶️ (play) ao lado do cenário que deseja rodar.

---

## ✅ **Fluxos Automatizados (E2E)**
- **Login** → Validação de autenticação.
- **Adicionar item ao carrinho** → Confirmação da adição correta.
- **Checkout** → Preenchimento e validação de dados.
- **Compra completa** → Fluxo de compra até a finalização.

---

## 👨‍💻 **Autor**
**João Vitor de Jesus Oliveira**  
🔗 [LinkedIn](https://www.linkedin.com/in/joão-vitor-de-jesus-oliveira)  
📧 [joao-vitorjc@hotmail.com](mailto:joao-vitorjc@hotmail.com)

---

## 📄 **Licença**
Este projeto tem caráter **acadêmico/demonstrativo** e foi desenvolvido para avaliação técnica.
