package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;

import july.lease.domain.Message;
import july.lease.dto.MessageDto;

@Service
public interface MessageService {
	
	public List<MessageDto> getMessageList();
	public List<MessageDto> listToMessageDto(List<Message> list);
	
}
