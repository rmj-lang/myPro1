package zua.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import zua.pojo.attention;
import zua.pojo.users;
import zua.vo.userConcern;

import java.util.List;

public interface usersDao {
    @Select("select * from users where uid=#{uid}")
    public users findUserById(@Param("uid") String uid);
    @Insert("insert into users(uid,password) values(#{uid},#{password})")
    public void adduser(@Param("uid") String uid,@Param("password") String password);
    @Select("select * from users where uid in(select rid from attention where uid=#{uid})")
    public List<users> findattentionuser(@Param("uid") String uid);
    @Select("select * from users where uid in(select uid from attention where rid=#{uid})")
    public List<users> finduserattention(@Param("uid") String uid);
    @Select("select * from users where uid not in(select rid from attention where uid=#{uid}) and uid<>#{uid}")
    public List<users> findNotattention(String uid);

    @Select("select * from attention where rid in(select uid from attention where rid=#{uid})and uid=#{uid}")
    public List<attention> findaaa(@Param("uid") String uid);



    @Insert("insert into attention values(#{uid},#{rid})")
    public void addConcern(@Param("uid") String uid,@Param("rid") String rid);

    @Delete("delete from attention where uid=#{uid} and rid=#{rid}")
    public void deleteConcern(@Param("uid")String uid,@Param("rid")String rid);

}
