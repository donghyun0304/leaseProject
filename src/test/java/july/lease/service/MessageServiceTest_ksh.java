package july.lease.service;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import july.lease.dto.MessageDto;
import july.lease.dto.OrderMessageDto;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@ActiveProfiles("test")
@Slf4j
public class MessageServiceTest_ksh {

	@Autowired
	private MessageService messageService;
	
	@Test
	public void getMessageList() {
		
		List<MessageDto> list = messageService.getOrderMessageList(2L);
		
		for(int i=0; i<list.size(); i++) {
			log.info("message={}", list.get(i));
		}
	}
	
	@Test
	public void getOneProductInfoTest() {
		
		// orderId
		OrderMessageDto msgProductInfo = messageService.getOneProductInfo(2L);
		
		log.info("========productInfo========");
		log.info(msgProductInfo.getSellerName());
		log.info(msgProductInfo.getProductName());
		log.info(msgProductInfo.getProductImage());
		log.info(msgProductInfo.getOrderRentStartDate());
		log.info(msgProductInfo.getOrderRentEndDate());
	}
	
}
