package zua.dao;

import org.apache.ibatis.annotations.Select;
import zua.pojo.attention;
import zua.pojo.users;

import java.util.List;

public interface attentionDao {
    @Select("select * from attention where uid=#{uid}")
    public List<attention> findAttentions();


}
