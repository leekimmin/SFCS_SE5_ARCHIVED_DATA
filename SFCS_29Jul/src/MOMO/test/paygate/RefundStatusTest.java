package MOMO.test.paygate;

import MOMO.main.allinone.models.RefundStatusRequest;
import MOMO.main.allinone.models.RefundStatusResponse;
import MOMO.main.allinone.processor.allinone.RefundStatus;
import MOMO.main.shared.sharedmodels.Environment;
import MOMO.main.shared.sharedmodels.PartnerInfo;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;

class RefundStatusTest {
    PartnerInfo devInfo = new PartnerInfo("MOMOLRJZ20181206", "mTCKt9W3eU1m39TW", "KqBEecvaJf1nULnhPF5htpG3AMtDIOlD");
    Environment env = new Environment("https://test-payment.momo.vn/gw_payment/transactionProcessor", devInfo, "development");

    String requestId = "1560997093046";
    String orderId = "1560997093046";

//    @Test
//    void refundStatusTest() throws Exception {
//        assertDoesNotThrow(() -> {
//
//            RefundStatus refundStatus = new RefundStatus(env);
//
//            RefundStatusRequest request = refundStatus.createRefundStatusRequest(requestId, orderId);
//            assertEquals("52e4beeb09bb9eaae8add532898e623b52e06d1317daa216289461d3a3f6d096", request.getSignature(),
//                    "Wrong Signature from Refund Status Request");
//
//            List<RefundStatusResponse> response = refundStatus.execute(request);
//            assertEquals(5, response.size(), "Wrong retrieval of Refund Transactions -- Not enough transactions");
//        });
//    }
}