import createLogger from './bunyan-logger';

let logger = createLogger(__filename);
exports.handler = async (event: object, context: object) => {
    logger.info('Lambda invoked');
    return {
        statusCode: 200,
        body: 'Hello'
    }
};