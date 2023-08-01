package july.lease.service;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import july.lease.MypageController_KSW.Mapper.MyPageMapper;
import july.lease.MypageController_KSW.Service.MyPageService;
import july.lease.dao.product.ProductMapper;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@ActiveProfiles("test")
@Transactional
@Slf4j
public class myPageServiceTest_KSW {

	@Autowired
	private MyPageMapper mapper;
	
	@Test
	void findByname() {
//		log.info(myPageService.findByName(1L));
		String name1 = mapper.findByName(1L);
		Assertions.assertThat(name1).isEqualTo("회원명1");
	}
	

}
