package zua.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import zua.pojo.essaycomment;

import java.util.List;

public interface essaycommentDao {
    @Select("select *from essaycomment where eid=#{eid}")
    public List<essaycomment> findcommentByeid(@Param("eid")int eid);
    @Insert("insert into essaycomment(eid,uid,econtent,ecdate,ecapproval,ecunapproval) values(#{eid},#{uid},#{econtent},#{ecdate},#{ecapproval},#{ecunapproval})")
    public void addcomment(essaycomment essaycomment);
}
