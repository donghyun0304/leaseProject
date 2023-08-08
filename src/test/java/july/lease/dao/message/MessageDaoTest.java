package july.lease.dao.message;

import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import july.lease.domain.Message;
import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
@ActiveProfiles("test")
public class MessageDaoTest {

	@Autowired
	private MessageDao messageDao;
	
	@Test
	public void getOrderMessageList() {
		
		List<Message> list = messageDao.getMessage(1L);
		
		for(int i=0; i<list.size(); i++) {
			log.info("message"+list.get(i));
		}
	}
	
	@Test
	public void getOneInfoTest() {
	
		// productId
		ProductMessageInfoDto pInfo = messageDao.getOneProductInfo(6L);
		
		log.info("========productInfo========");
		log.info(pInfo.getProductName());
		log.info(pInfo.getSellerName());
		log.info(String.valueOf(pInfo.getProductPrice()));
		log.info(pInfo.getLocation());
		log.info(pInfo.getStoreImageName());

		
	}
	
	@Test
	public void getMyAllMessageList() {
		
		List<MyAllMessageListDto> list = messageDao.getMyAllMessageList(2L);
		
		for(int i=0; i<list.size(); i++) {
			log.info("MyAllMessageList"+list.get(i));
		}
		
	}
	
	@Test
	public void insertMessageTest() {
		Message msg = new Message();
		msg.setMyId(1L);
		msg.setYourId(2L);
		msg.setProductId(6L);
		msg.setRoomNo(1L);
		msg.setMessageText("테스트으ㅡㅇ");
		
		int res1 = messageDao.insertMessageContent(msg);
		int res2 = messageDao.insertMessage(msg);
		
		log.info("res1={}", res1);
		log.info("res2={}", res2);
	}
	
	@Test
	public void findRoomNo() {
		Long roomNo = messageDao.findRoomNo(1L, 6L);
		log.info("roomNo={}", roomNo);
	}
}
