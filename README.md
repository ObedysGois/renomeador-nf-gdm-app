# 🔄 Renomeador de Notas Fiscais - GDM

Um aplicativo web moderno para processar e renomear automaticamente arquivos PDF de notas fiscais baseado em dados extraídos do documento.

## 🚀 Funcionalidades

- **Upload de múltiplos PDFs**: Arraste e solte ou selecione arquivos PDF
- **Extração automática de dados**: Extrai informações como número da NF, CNPJ, data, valor, etc.
- **Renomeação inteligente**: Renomeia arquivos baseado em dados extraídos e base de clientes
- **Validação de CFOP**: Processa apenas notas com CFOPs específicos (2411, 6202, 5202) ou devoluções
- **Interface moderna**: Design responsivo com feedback visual
- **Download de arquivos**: Acesso direto aos arquivos processados
- **Gerenciamento de arquivos**: Lista e limpeza de arquivos salvos

## 📋 Dados Extraídos

O sistema extrai automaticamente os seguintes dados das notas fiscais:

- **Nº da NF (DANFE)**: Número da nota fiscal
- **CNPJ do Emitente**: Para busca na base de clientes
- **Razão Social**: Nome da empresa emitente
- **Data de Emissão**: Data da emissão da nota
- **Valor Total**: Valor total da nota fiscal
- **CFOP**: Código fiscal de operações
- **Natureza da Operação**: Descrição da operação
- **Dados Adicionais**: Número e motivo (quando disponíveis)

## 🎯 Padrão de Renomeação

Os arquivos são renomeados seguindo o padrão:

```
NFD [Número NF] - [Nome Fantasia/1º Nome + Cidade + Bairro] - [Data] - R$ [Valor] - REF. [Número] - MOT. [Motivo].pdf
```

### Exemplos:
- `NFD 1364 - MASANI - 13/05/2025 - R$ 167,01 - REF. 53795 - MOT. MERCADORIA DE TROCA.pdf`
- `NFD 1364 - SENDAS JUAZEIRO JARDIM VITORIA - 13/05/2025 - R$ 167,01 - REF. 53795 - MOT. MERCADORIA DE TROCA.pdf`

## 🛠️ Tecnologias Utilizadas

### Backend
- **Node.js** com **Express.js**
- **Multer** para upload de arquivos
- **pdf-parse** para extração de texto de PDFs
- **pdf-lib** para manipulação de PDFs
- **xlsx** para leitura de arquivos Excel
- **CORS** para comunicação entre frontend e backend

### Frontend
- **React.js** com hooks modernos
- **react-dropzone** para upload de arquivos
- **Axios** para requisições HTTP
- **CSS3** com design responsivo e animações

## 📦 Instalação e Configuração

### Pré-requisitos
- Node.js (versão 14 ou superior)
- npm ou yarn

### 1. Clone o repositório
```bash
git clone [URL_DO_REPOSITORIO]
cd "Renomeador de NF - GDM"
```

### 2. Instale as dependências do backend
```bash
npm install
```

### 3. Instale as dependências do frontend
```bash
cd renomeador-nf-gdm-app
npm install
```

### 4. Configure a base de clientes
Certifique-se de que o arquivo `DADOSCLIENTES.xlsx` está presente em:
```
renomeador-nf-gdm-app/public/DADOSCLIENTES.xlsx
```

O arquivo deve conter as colunas:
- **CNPJ Emitente**: CNPJ da empresa
- **Nome Fantasia**: Nome fantasia da empresa
- **Vendedor**: Nome do vendedor

### 5. Inicie o servidor backend
```bash
# Na pasta raiz do projeto
cd server
node index.js
```

O servidor estará rodando em `http://localhost:5000`

### 6. Inicie o aplicativo React
```bash
# Em outro terminal, na pasta do app
cd renomeador-nf-gdm-app
npm start
```

O aplicativo estará disponível em `http://localhost:3000`

## 🎮 Como Usar

1. **Acesse o aplicativo** em `http://localhost:3000`
2. **Arraste e solte** arquivos PDF de notas fiscais na área de upload
3. **Aguarde o processamento** - o sistema extrairá os dados automaticamente
4. **Visualize os resultados** - cada arquivo mostrará seu status e dados extraídos
5. **Faça download** dos arquivos renomeados clicando no botão de download
6. **Gerencie arquivos** - visualize todos os arquivos salvos e limpe quando necessário

## 🔧 Configurações Avançadas

### CFOPs Válidos
Para modificar quais CFOPs são aceitos, edite o array `cfopValidos` no arquivo `server/index.js`:

```javascript
const cfopValidos = ['2411', '6202', '5202'];
```

### Padrões de Extração
Os padrões de extração de dados podem ser ajustados no arquivo `server/index.js` na função `extractData()`.

### Portas
- **Backend**: Porta 5000 (configurável em `server/index.js`)
- **Frontend**: Porta 3000 (configurável no package.json do React)

## 📁 Estrutura do Projeto

```
Renomeador de NF - GDM/
├── package.json                 # Dependências do projeto
├── server/
│   ├── index.js                # Servidor Express
│   ├── uploads/                # Arquivos temporários
│   └── processed_pdfs/         # PDFs processados
├── renomeador-nf-gdm-app/
│   ├── public/
│   │   ├── DADOSCLIENTES.xlsx  # Base de clientes
│   │   └── index.html
│   ├── src/
│   │   ├── App.js             # Componente principal
│   │   ├── App.css            # Estilos
│   │   └── index.js
│   └── package.json
└── README.md
```

## 🐛 Solução de Problemas

### Erro ao carregar dados de clientes
- Verifique se o arquivo `DADOSCLIENTES.xlsx` existe no caminho correto
- Confirme se o arquivo não está corrompido

### Erro de CORS
- Certifique-se de que o servidor backend está rodando na porta 5000
- Verifique se o CORS está configurado corretamente

### Arquivos não processados
- Verifique se os PDFs contêm os dados necessários
- Confirme se o CFOP está na lista de CFOPs válidos

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença ISC. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Suporte

Para suporte ou dúvidas, entre em contato através dos canais disponíveis.

---

**Desenvolvido com ❤️ para GDM** 