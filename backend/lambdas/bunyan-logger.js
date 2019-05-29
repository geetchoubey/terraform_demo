const bunyan = require('bunyan');

/**
 * Global logger to log messages to AWS Cloud watch
 * #TODO Bunyan-Splunk integration
 * @param {String} appname Name of the file that initializes the logger
 * @returns {*|Logger} A Bunyan logger object
 */
module.exports = appname => {
  const logger = bunyan.createLogger({
    name: appname,
    streams: [
      {
        level: 'info',
        stream: process.stdout
      }
    ]
  });
  logger.info(`Logger for ${appname} initialised`);
  return logger;
};
