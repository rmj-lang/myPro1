package zua.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface approvalDao {
    @Insert("insert into approval values(#{uid},#{eid})")
    public void addApproval(@Param("uid")String uid,@Param("eid")int eid);

    @Delete("delete from approval where uid=#{uid} and eid=#{eid}")
    public void deleteApproval(@Param("uid")String uid,@Param("eid")int eid);
}
