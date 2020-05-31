package zua.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import zua.pojo.problem;
import zua.vo.userProblem;

import java.util.List;

public interface problemDao {
    @Insert("insert into problem(uid,pcontent,pdate)values(#{uid},#{pcontent},#{pdate})")
    public void addproblem(problem problem);
    @Select("select pid,problem.uid,uimg,pcontent,pdate from problem,users where problem.uid=users.uid and pcontent like CONCAT('%',#{content},'%')")
    public List<userProblem> findlikeproblem(String content);

    @Delete("delete from problem where pid=#{pid}")
    public void deleteProblem(int pid);
}
