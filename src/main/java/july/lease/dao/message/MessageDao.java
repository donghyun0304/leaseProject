package july.lease.dao.message;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import july.lease.domain.Message;
import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@RequiredArgsConstructor
public class MessageDao {

	private final MessageMapper messageMapper;
	
	public List<Message> getMessage(Long roomNo){
		return messageMapper.getMessage(roomNo);
	}
	
	public ProductMessageInfoDto getOneProductInfo(Long productId) {
		return messageMapper.getOneProductInfo(productId);
	}

	
	public List<MyAllMessageListDto> getMyAllMessageList(Long memberId) {
		return messageMapper.getMyAllMessageList(memberId);
	};
	
	// messageContent 저장
	public int insertMessageContent(Message msgVo) {
		return messageMapper.insertMessageContent(msgVo);
	}
	
	// message 저장
	public int insertMessage(Message msgVo) {
		return messageMapper.insertMessage(msgVo);
	}
	
	// roomNo 조회
	public Long findRoomNo(@Param("myId") Long myId,@Param("productId") Long productId) {
		return messageMapper.findRoomNo(myId, productId);
	}
}
