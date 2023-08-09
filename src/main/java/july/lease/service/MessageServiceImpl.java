package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import july.lease.dao.message.MessageDao;
import july.lease.domain.Message;
import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MessageServiceImpl implements MessageService{

	private final MessageDao messageDao;
	
	// 메세지 조회
	@Override
	public List<Message> getMessage(Long myId, Long roomNo) {
		
		// 메세지 읽음 처리
		messageDao.readCheck(myId, roomNo);
		
		return messageDao.getMessage(roomNo);
	}

	// 제품 정보
	@Override
	public ProductMessageInfoDto getOneProductInfo(Long productId) {
		return messageDao.getOneProductInfo(productId);
	}
	
	// 메세지 리스트
	@Override
	public List<MyAllMessageListDto> getMyAllMessageList(Long memberId) {
		
		List<MyAllMessageListDto> list = messageDao.getMyAllMessageList(memberId);
		
		// 안읽은 메세지 개수
		list.forEach(msg -> {
			msg.setNoReadMcnt(messageDao.countUnreadMessage(memberId, msg.getRoomNo()));
		});
		
		return list;
	}

	@Transactional
	@Override
	public int insertMessage(Message msgVo) {
		int res=0;
		
		res = messageDao.insertMessageContent(msgVo);
		res = messageDao.insertMessage(msgVo);
		
		return res;
	}

	@Override
	public Long findRoomNo(Long myId, Long productId) {
		
		Long no = messageDao.findRoomNo(myId, productId);
		Long roomNo = no==null?0:no;
		
		if(roomNo == 0) {
			// 룸넘버가 null이면 roomNo 최대값+1 해주기
			roomNo = messageDao.maxRoomNo()+1;
		}
		return roomNo;
	}

	@Override
	public int countUnreadMessage(Long yourId, Long roomNo) {
		return messageDao.countUnreadMessage(yourId, roomNo);
	}

}
