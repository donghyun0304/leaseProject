package july.lease.service;

import java.util.List;

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
			// 트랜잭션 수정해두기 2번째 인서트 실패하면 1번째 롤백되게
			messageDao.insertMessageContent(msgVo); // 첫 번째 인서트 문
			res = messageDao.insertMessage(msgVo); // 두 번째 인서트 문
		} catch (Exception e) {
		    // 롤백
		}
		return res;
	}

	@Override
	public Long findRoomNo(Long myId, Long productId) {
		
		Long roomNo = messageDao.findRoomNo(myId, productId);
		
		if(roomNo == null) {
			// 룸넘버가 null이면 roomNo 최대값+1 해주기
			roomNo = messageDao.maxRoomNo()+1;
		}
		return roomNo;
	}
}
