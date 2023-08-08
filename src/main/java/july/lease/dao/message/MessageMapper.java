package july.lease.dao.message;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import july.lease.domain.Message;
import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;

@Mapper
public interface MessageMapper {
	
	// 메세지 조회
	public List<Message> getMessage(Long roomNo);

	// 메세지에 대한 제품 정보
	public ProductMessageInfoDto getOneProductInfo(Long productId);
	
	// 전체 메세지 리스트
	public List<MyAllMessageListDto> getMyAllMessageList(Long memberId);
	
	// messageContent 저장
	public int insertMessageContent(Message msgVo);
	
	// message 저장
	public int insertMessage(Message msgVo);
	
	// roomNo 조회
	public Long findRoomNo(@Param("myId") Long myId,@Param("productId") Long productId);
	
}
