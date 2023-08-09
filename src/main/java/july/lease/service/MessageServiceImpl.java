package july.lease.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import july.lease.dao.message.MessageDao;
import july.lease.domain.Message;
import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MessageServiceImpl implements MessageService{

	private final MessageDao messageDao;
	
	@Override
	public List<Message> getMessage(Long roomNo) {
		
		return messageDao.getMessage(roomNo);
	}

	@Override
	public ProductMessageInfoDto getOneProductInfo(Long productId) {
		return messageDao.getOneProductInfo(productId);
	}
	
	@Override
	public List<MyAllMessageListDto> getMyAllMessageList(Long memberId) {
		return messageDao.getMyAllMessageList(memberId);
	}

	@Transactional
	@Override
	public int insertMessage(Message msgVo) {
		int res=0;
		try {
			//msgVo.setYourId(messageDao.findYourId(msgVo.getRoomNo(), msgVo.getMyId()));
			messageDao.insertMessageContent(msgVo); // 첫 번째 인서트 문
			res = messageDao.insertMessage(msgVo); // 두 번째 인서트 문
		} catch (Exception e) {
		    // 롤백
		}
		return res;
	}

	@Override
	public Long findRoomNo(Long myId, Long productId) {
		// TODO Auto-generated method stub
		return null;
	}

}
