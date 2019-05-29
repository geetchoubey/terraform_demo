import * as bunyan from 'bunyan';

let createLogger = (name: string) => {
    const logger = bunyan.createLogger({
        name: name,
        streams: [
            {
                level: 'info',
                stream: process.stdout
            }
        ]
    });
    logger.info(`Logger for ${name} initialised`);
    return logger;
};

export default createLogger;