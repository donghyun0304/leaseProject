package july.lease.dao.message;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import july.lease.domain.Message;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
@ActiveProfiles("test")
public class MessageDaoTest {

	@Autowired
	private MessageDao messageDao;
	
	@Test
	public void getMessageListTest() {
		
		List<Message> list = messageDao.getMessageListf();
		
		for(int i=0; i<list.size(); i++) {
			log.info("message"+list.get(i));
		}
	}
}
