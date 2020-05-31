package zua.dao;

import org.apache.ibatis.annotations.Insert;
import zua.pojo.response;

public interface responseDao {
    @Insert("insert into response(uid,pid,rcontent,rdate,rapproval,runapproval) values (#{uid},#{pid},#{rcontent},#{rdate},#{rapproval},#{runapproval})")
    public void addResponse(response response);
}
