package july.lease.dao.message;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Message;

@Mapper
public interface MessageMapper {
	
	List<Message> getMessageList();

}
