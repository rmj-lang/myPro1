package zua.dao;

import org.apache.ibatis.annotations.*;
import zua.pojo.essay;
import zua.vo.userEssay;

import java.util.List;

public interface essayDao {
    @Select("select * from essay")
    public List<essay> findAllessays();

    @Update("update essay set eapproval=eapproval+1 where eid=#{eid}")
    public void addApproval(@Param("eid")int eid);

    @Update("update essay set eapproval=eapproval-1 where eid=#{eid}")
    public void cancleApproval(@Param("eid")int eid);

    @Update("update essay set ecollect=ecollect+1 where eid=#{eid}")
    public void addCollect(@Param("eid")int eid);

    @Update("update essay set ecollect=ecollect-1 where eid=#{eid}")
    public void cancleCollect(@Param("eid")int eid);
    @Insert("insert into essay(uid,etitle,econtent,edate,eapproval,ecollect,ecomment,tid) values(#{uid},#{etitle},#{econtent},#{edate},#{eapproval},#{ecollect},#{ecomment},#{tid})")
    public void addEssay(essay essay);
    @Update("update essay set ecomment=ecomment+1 where eid=#{eid}")
    public void addComment(@Param("eid") int eid);
    @Select("select eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment from essay,users where essay.uid=users.uid and etitle like CONCAT('%',#{content},'%')")
    public List<userEssay> findlikeessay(String content);
    @Delete("delete from essay where eid=#{eid}")
    public void deleteEssay(int eid);
}
