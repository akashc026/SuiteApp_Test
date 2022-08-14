/**
 * @NApiVersion 2.1
 * @NScriptType Suitelet
 * @NModuleScope SameAccount
 */
 define([], () => {
    function onRequest({ request, response }) {
      try {
        if (request.method === "GET") log.debug("get request", "received");
        else log.debug("post request", "received");
      } catch (err) {
        log.error("Error", err);
      }
    }
    return {
      onRequest,
    };
  });