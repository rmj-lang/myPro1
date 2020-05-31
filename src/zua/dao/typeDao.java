package zua.dao;

import org.apache.ibatis.annotations.Select;
import zua.pojo.type;

import java.util.List;

public interface typeDao {
    @Select("select * from type")
    public List<type> findAllTypes();
}
