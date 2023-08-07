package july.lease.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import july.lease.dao.message.MessageDao;
import july.lease.domain.Message;
import july.lease.dto.MessageDto;
import july.lease.dto.OrderMessageDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MessageServiceImpl implements MessageService{

	private final MessageDao messageDao;
	
	@Override
	public List<MessageDto> getOrderMessageList(Long orderId) {
		List<Message> list= messageDao.getOrderMessageList(orderId);
		
		return listToMessageDto(list);
	}

	@Override
	public OrderMessageDto getOneProductInfo(Long orderId) {
		return messageDao.getOneProductInfo(orderId);
	}
	
	public List<MessageDto> listToMessageDto(List<Message> list) {
		
		// !! 널처리 필요
		return list.stream().map(msg->new MessageDto(msg.getMessageId(), msg.getMyId(), msg.getYourId(),
				msg.getMessageContentId(), msg.getMessageReadStatus(), msg.getMessageDeleteStatus(),
				msg.getOrderId(), msg.getMessageCreateDate(), msg.getMyNickname(), msg.getYourNickname(),
				msg.getMessageText())).collect(Collectors.toList());
	}
	
//	public MessageDto convertToMessageDto(Message msgOrderInfo) {
//		
//		// !! 널처리 필요
//		return new MessageDto(msgOrderInfo.getSellerName(), msgOrderInfo.getProductName(), msgOrderInfo.getProductImage(),
//				msgOrderInfo.getOrderRentStartDate(), msgOrderInfo.getOrderRentEndDate());
//	}

}
