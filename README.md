# This is a project I demonstrate how to make full use of Ethereum 

It contains two parts of demonstration:
1. web3.js. 
2. web3.py 


### install nodejs kernel for jupyter notebook
```bash
nvm install 10.16.0
npm install -g ijavascript
ijsinstall
```

set the NODE_PATH:   

```bash
echo "export NODE_PATH=$(npm root -g)" >> ~/.bashrc && source ~/.bashrc
```

### install web3.js
```bash
npm i -g web3
```


### Run jupyter
```bash
jupyter notebook
```

### To compile Smart Contract with solc in nodejs
```bash
npm install -g solc
```

### To compile Smart Contract with py-solcx
```
pip install py-solc-x
python -m solcx.install v0.5.10
```