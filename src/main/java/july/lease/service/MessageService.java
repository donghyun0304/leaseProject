package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;

import july.lease.dto.MessageDto;
import july.lease.dto.OrderMessageDto;

@Service
public interface MessageService {
	
	public List<MessageDto> getOrderMessageList(Long orderId);
	
	public OrderMessageDto getOneProductInfo(Long orderId);
	
}
