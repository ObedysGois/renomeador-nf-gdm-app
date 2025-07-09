# 🚀 Instalação Rápida - Renomeador de NF GDM

## ⚡ Início Rápido (Windows)

### 1. Pré-requisitos
- Node.js instalado (versão 14 ou superior)
- npm ou yarn

### 2. Instalação Automática
```bash
# Clone ou baixe o projeto
# Navegue até a pasta do projeto
cd "Renomeador de NF - GDM"

# Instale as dependências do backend
npm install

# Instale as dependências do frontend
cd renomeador-nf-gdm-app
npm install
cd ..
```

### 3. Iniciar o Aplicativo
**Opção A - Script Automático (Recomendado):**
```bash
# Execute o arquivo start.bat
start.bat
```

**Opção B - Manual:**
```bash
# Terminal 1 - Backend
cd server
node index.js

# Terminal 2 - Frontend
cd renomeador-nf-gdm-app
npm start
```

### 4. Acessar o Aplicativo
- **Frontend**: http://localhost:3000
- **Backend**: http://localhost:5000

## ⚡ Início Rápido (Linux/Mac)

### 1. Pré-requisitos
- Node.js instalado (versão 14 ou superior)
- npm ou yarn

### 2. Instalação Automática
```bash
# Clone ou baixe o projeto
# Navegue até a pasta do projeto
cd "Renomeador de NF - GDM"

# Instale as dependências do backend
npm install

# Instale as dependências do frontend
cd renomeador-nf-gdm-app
npm install
cd ..

# Torne o script executável
chmod +x start.sh
```

### 3. Iniciar o Aplicativo
**Opção A - Script Automático (Recomendado):**
```bash
# Execute o script
./start.sh
```

**Opção B - Manual:**
```bash
# Terminal 1 - Backend
cd server
node index.js

# Terminal 2 - Frontend
cd renomeador-nf-gdm-app
npm start
```

### 4. Acessar o Aplicativo
- **Frontend**: http://localhost:3000
- **Backend**: http://localhost:5000

## 📋 Verificação da Instalação

### 1. Verificar se o Node.js está instalado:
```bash
node --version
npm --version
```

### 2. Verificar se as dependências foram instaladas:
```bash
# Na pasta raiz do projeto
ls node_modules

# Na pasta do app React
cd renomeador-nf-gdm-app
ls node_modules
```

### 3. Verificar se o arquivo de clientes existe:
```bash
# Verificar se o arquivo existe
ls renomeador-nf-gdm-app/public/DADOSCLIENTES.xlsx
```

## 🔧 Solução de Problemas Comuns

### Erro: "Module not found"
```bash
# Reinstale as dependências
npm install
cd renomeador-nf-gdm-app
npm install
```

### Erro: "Port already in use"
```bash
# Encerre processos nas portas 3000 e 5000
# Windows:
netstat -ano | findstr :3000
netstat -ano | findstr :5000

# Linux/Mac:
lsof -i :3000
lsof -i :5000
```

### Erro: "Cannot find module"
```bash
# Verifique se está na pasta correta
pwd
# Deve mostrar o caminho para "Renomeador de NF - GDM"
```

## 📁 Estrutura de Arquivos Esperada

```
Renomeador de NF - GDM/
├── node_modules/              # Dependências do backend
├── server/
│   ├── index.js              # Servidor principal
│   ├── uploads/              # Arquivos temporários
│   └── processed_pdfs/       # PDFs processados
├── renomeador-nf-gdm-app/
│   ├── node_modules/         # Dependências do frontend
│   ├── public/
│   │   └── DADOSCLIENTES.xlsx # Base de clientes
│   └── src/
│       ├── App.js            # Componente principal
│       └── App.css           # Estilos
├── config.js                 # Configurações
├── start.bat                 # Script Windows
├── start.sh                  # Script Linux/Mac
└── README.md                 # Documentação completa
```

## 🎯 Próximos Passos

1. **Acesse** http://localhost:3000
2. **Arraste e solte** arquivos PDF de notas fiscais
3. **Aguarde** o processamento automático
4. **Faça download** dos arquivos renomeados

## 📞 Suporte

Se encontrar problemas:
1. Verifique se todos os pré-requisitos estão instalados
2. Confirme se está na pasta correta
3. Tente reinstalar as dependências
4. Consulte o README.md completo para mais detalhes

---

**✅ Instalação concluída! O aplicativo está pronto para uso.** 

Obrigado pela paciência! Já identifiquei o principal problema:  
Seu projeto utiliza o hook `useDropzone` do pacote `react-dropzone`, mas ele não está listado nas dependências do seu `package.json` e provavelmente não está instalado. O mesmo vale para o pacote `axios`.

**Isso causa o erro de "Invalid hook call"** porque o React não consegue encontrar ou usar corretamente o hook de uma dependência não instalada ou incompatível.

---

## Como Resolver

Vamos instalar as dependências necessárias:

1. **No terminal, execute:**
   ```sh
   npm install react-dropzone axios
   ```

2. **Depois, reinicie o frontend:**
   ```sh
   npm start
   ```

---

Se após isso o erro persistir, me envie novamente o erro do console.  
Se aparecer outro erro, também me envie para que eu possa te ajudar a resolver!

Se precisar, posso rodar o comando de instalação para você. Deseja que eu faça isso automaticamente? 