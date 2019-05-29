let logger = require('./bunyan-logger')(__filename);

module.exports.handler = async (event, context) => {
    logger.info('Lambda invoked');
    let response = {
        status: 200,
        body: 'Hello'
    };
    return response;
}
