package zua.dao;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import zua.vo.userAndProblem;
import zua.vo.userProblem;

import java.util.List;

public interface userAndproblemDao {
    @Select("select problem.pid,problem.uid,uimg,pcontent,pdate,problemAttention.uid attentionid from problem LEFT JOIN users on problem.uid=users.uid LEFT JOIN problemAttention on problem.pid=problemAttention.pid And problemAttention.uid=#{uid}")
    @Results({
            @Result(column = "problem.pid",property = "pid"),
            @Result(column = "problem.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "pcontent",property = "pcontent"),
            @Result(column = "pdate",property = "pdate"),
            @Result(column = "attentionid",property = "attentionid"),
    })
    public List<userAndProblem> findproblem(String uid);
    @Select("select problem.pid,problem.uid,uimg,pcontent,pdate,problemAttention.uid attentionid from problem LEFT JOIN users on problem.uid=users.uid LEFT JOIN problemAttention on problem.pid=problemAttention.pid And problemAttention.uid=#{uid} where problemAttention.uid=#{uid}")
    @Results({
            @Result(column = "problem.pid",property = "pid"),
            @Result(column = "problem.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "pcontent",property = "pcontent"),
            @Result(column = "pdate",property = "pdate"),
            @Result(column = "attentionid",property = "attentionid"),
    })
    public List<userAndProblem> findattentionproblem(String uid);

    @Select("select problem.pid,problem.uid,uimg,pcontent,pdate,problemAttention.uid attentionid from problem LEFT JOIN users on problem.uid=users.uid LEFT JOIN problemAttention on problem.pid=problemAttention.pid And problemAttention.uid=#{uid} where problem.uid in(select rid from attention where uid=#{uid})")
    @Results({
            @Result(column = "problem.pid",property = "pid"),
            @Result(column = "problem.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "pcontent",property = "pcontent"),
            @Result(column = "pdate",property = "pdate"),
            @Result(column = "attentionid",property = "attentionid"),
    })
    public List<userAndProblem> findattention(String uid);

    @Select("select pid,problem.uid,uimg,pcontent,pdate from problem,users where problem.uid=users.uid and problem.uid=#{uid}")
    public List<userProblem> finduserproblem(String uid);
}
