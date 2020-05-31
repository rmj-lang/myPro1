package zua.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import zua.vo.userAndComment;

import java.util.List;

public interface userAndcommentDao {
    @Select("select *from essaycomment,users where essaycomment.uid=users.uid and eid=#{eid}")
    public List<userAndComment> findcommentByeid(@Param("eid")int eid);
}
