package july.lease.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import july.lease.dao.message.MessageDao;
import july.lease.domain.Message;
import july.lease.dto.MessageDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MessageServiceImpl implements MessageService{

	private final MessageDao messageDao;
	
	@Override
	public List<MessageDto> getMessageList() {
		List<Message> list= messageDao.getMessageListf();
		
		return listToMessageDto(list);
	}

	@Override
	public List<MessageDto> listToMessageDto(List<Message> list) {
		
		return list.stream().map(msg->new MessageDto(msg.getMessageId(), msg.getMyId(), msg.getYourId(),
				msg.getMessageContentId(), msg.getMessageReadStatus(), msg.getMessageDeleteStatus(),
				msg.getOrderId(), msg.getMessageCreateDate(), msg.getMyNickname(), msg.getYourNickname(),
				msg.getMessageText())).collect(Collectors.toList());
	}

}
