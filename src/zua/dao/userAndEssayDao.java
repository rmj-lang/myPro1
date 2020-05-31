package zua.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Service;
import zua.vo.userAndEssay;
import zua.vo.userEssay;

import java.util.List;

public interface userAndEssayDao {
    @Select("select essay.eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment,approval.uid likeid,collect.uid collectid from essay LEFT JOIN users on users.uid=essay.uid LEFT JOIN approval on essay.eid=approval.eid And approval.uid=#{uid} LEFT JOIN collect on essay.eid=collect.eid And collect.uid=#{uid} ORDER BY eapproval DESC")
    @Results({
            @Result(column = "essay.eid",property = "eid"),
            @Result(column = "essay.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "etitle",property = "etitle"),
            @Result(column = "econtent",property = "econtent"),
            @Result(column = "edate",property = "edate"),
            @Result(column = "eapproval",property = "eapproval"),
            @Result(column = "ecollect",property = "ecollect"),
            @Result(column = "ecomment",property = "ecomment"),
            @Result(column = "likeid",property = "likeid"),
            @Result(column = "collectid",property = "collectid"),
    })
    public List<userAndEssay> findAllessays(@Param("uid") String uid);

    @Select("select essay.eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment,approval.uid likeid,collect.uid collectid from essay LEFT JOIN users on users.uid=essay.uid LEFT JOIN approval on essay.eid=approval.eid And approval.uid=#{uid} LEFT JOIN collect on essay.eid=collect.eid And collect.uid=#{uid} ORDER BY eapproval DESC limit 10")
    @Results({
            @Result(column = "essay.eid",property = "eid"),
            @Result(column = "essay.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "etitle",property = "etitle"),
            @Result(column = "econtent",property = "econtent"),
            @Result(column = "edate",property = "edate"),
            @Result(column = "eapproval",property = "eapproval"),
            @Result(column = "ecollect",property = "ecollect"),
            @Result(column = "ecomment",property = "ecomment"),
            @Result(column = "likeid",property = "likeid"),
            @Result(column = "collectid",property = "collectid"),
    })
    public List<userAndEssay> findessaysByhot(@Param("uid") String uid);


    @Select("select essay.eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment,approval.uid likeid,collect.uid collectid from essay LEFT JOIN users on users.uid=essay.uid LEFT JOIN approval on essay.eid=approval.eid And approval.uid=#{uid} LEFT JOIN collect on essay.eid=collect.eid And collect.uid=#{uid} where tid=#{tid} ORDER BY eapproval DESC")
    @Results({
            @Result(column = "essay.eid",property = "eid"),
            @Result(column = "essay.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "etitle",property = "etitle"),
            @Result(column = "econtent",property = "econtent"),
            @Result(column = "edate",property = "edate"),
            @Result(column = "eapproval",property = "eapproval"),
            @Result(column = "ecollect",property = "ecollect"),
            @Result(column = "ecomment",property = "ecomment"),
            @Result(column = "likeid",property = "likeid"),
            @Result(column = "collectid",property = "collectid"),
    })
    public List<userAndEssay> findEssaysBytid(@Param("uid") String uid,@Param("tid") int tid);
    @Select("select essay.eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment,approval.uid likeid,collect.uid collectid from essay LEFT JOIN users on users.uid=essay.uid LEFT JOIN approval on essay.eid=approval.eid And approval.uid=#{uid} LEFT JOIN collect on essay.eid=collect.eid And collect.uid=#{uid} where collect.uid=#{uid}")
    @Results({
            @Result(column = "essay.eid",property = "eid"),
            @Result(column = "essay.uid",property = "uid"),
            @Result(column = "uimg",property = "uimg"),
            @Result(column = "etitle",property = "etitle"),
            @Result(column = "econtent",property = "econtent"),
            @Result(column = "edate",property = "edate"),
            @Result(column = "eapproval",property = "eapproval"),
            @Result(column = "ecollect",property = "ecollect"),
            @Result(column = "ecomment",property = "ecomment"),
            @Result(column = "likeid",property = "likeid"),
            @Result(column = "collectid",property = "collectid"),
    })
    public List<userAndEssay> findcollectEssay(@Param("uid") String uid);

    @Select("select eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment from essay,users where essay.uid=users.uid and essay.uid=#{uid}")
    public List<userEssay> finduseressay(String uid);

    @Select("select essay.eid,essay.uid,uimg,etitle,econtent,edate,eapproval,ecollect,ecomment,approval.uid likeid,collect.uid collectid from essay LEFT JOIN users on users.uid=essay.uid LEFT JOIN approval on essay.eid=approval.eid And approval.uid=#{uid} LEFT JOIN collect on essay.eid=collect.eid And collect.uid=#{uid} where essay.eid=#{eid}")
    public List<userAndEssay> findEssayByeid(@Param("uid") String uid,@Param("eid") int eid);

}
