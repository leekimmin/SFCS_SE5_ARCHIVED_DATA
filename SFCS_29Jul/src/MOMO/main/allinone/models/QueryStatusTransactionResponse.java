package MOMO.main.allinone.models;


import java.util.Date;

/**
 * Created by Hai.Nguyen Date: 19-01-2018
 */
public class QueryStatusTransactionResponse extends PayGateResponse {
    public QueryStatusTransactionResponse(String partnerCode, String orderId, String orderInfo, String accessKey, String amount, String signature, String extraData, String requestId, String  requestType, int errorCode, String message, String localMessage, String transId, String orderType, String payType, Date responseDate) {
        super(partnerCode, orderId, orderInfo, accessKey, amount, signature, extraData, requestId, requestType, errorCode, message, localMessage, transId, orderType, payType, responseDate);
    }
}
