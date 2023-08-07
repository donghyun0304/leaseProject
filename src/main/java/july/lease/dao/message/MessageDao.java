package july.lease.dao.message;

import java.util.List;

import org.springframework.stereotype.Repository;

import july.lease.domain.Message;
import july.lease.dto.OrderMessageDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@RequiredArgsConstructor
@Slf4j
public class MessageDao {

	private final MessageMapper messageMapper;
	
	public List<Message> getOrderMessageList(Long orderId){
		
		return messageMapper.getOrderMessageList(orderId);
	}
	
	public OrderMessageDto getOneProductInfo(Long orderId) {
		return messageMapper.getOneProductInfo(orderId);
	}
	
}
