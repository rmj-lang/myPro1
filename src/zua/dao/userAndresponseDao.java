package zua.dao;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import zua.vo.userAndResponse;
import zua.vo.userResponse;

import java.util.List;

public interface userAndresponseDao {
    @Select("select rid,a.uid,a.uimg,a.pid,b.uid id,b.uimg img,pcontent,pdate,rcontent,rdate,rapproval,runapproval from (select rid,response.uid,uimg,pid,rcontent,rdate,rapproval,runapproval from response,users where response.uid=users.uid) a,(select pid,problem.uid,uimg,pcontent,pdate from problem,users where problem.uid=users.uid) b where a.pid=b.pid and a.uid=#{uid}")
    public List<userAndResponse> finduserResponse(String uid);
    @Select("select rid,response.uid,uimg,pid,rcontent,rdate,rapproval,runapproval from response,users where response.uid=users.uid and pid=#{pid}")
    public List<userResponse> findResponseBypid(int pid);
}
