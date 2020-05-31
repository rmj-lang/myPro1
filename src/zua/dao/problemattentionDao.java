package zua.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface problemattentionDao {
    @Delete("delete from problemAttention where pid=#{pid} and uid=#{uid}")
    public void cancleAttention(@Param("pid") int pid, @Param("uid") String uid);
    @Insert("insert into problemAttention values(#{uid},#{pid})")
    public void addAttention(@Param("pid") int pid,@Param("uid") String uid);
}
