require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/_e1hJNIjqWQm-qjBUuiIS83Y7UEN9BQP',
      accounts: ['76088b7715809e4e63bb9b7f6788ee741059691ce99583af3bbb472e0b36f26c'],
    },
  },
};