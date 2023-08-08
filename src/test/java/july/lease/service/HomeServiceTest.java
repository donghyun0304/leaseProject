package july.lease.service;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import july.lease.dto.HomeItemDto;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
@ActiveProfiles("test")
@Transactional
public class HomeServiceTest {

	@Autowired
	private HomeService homeService;
	
	@Test
	public void getAllItem() {
	    List<HomeItemDto> list = homeService.getAllItem();
	    System.out.println("list : " + list);
        assertNotNull(list);
	}
	
}
