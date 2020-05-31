package zua.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface collectDao {
    @Insert("insert into collect values(#{uid},#{eid})")
    public void addCollect(@Param("uid")String uid, @Param("eid")int eid);

    @Delete("delete from collect where uid=#{uid} and eid=#{eid}")
    public void deleteCollect(@Param("uid")String uid,@Param("eid")int eid);
}
