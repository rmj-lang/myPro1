package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.responseDao;
import zua.pojo.response;

@Service
public class responseService {
    @Autowired
    private responseDao responseDao;

    public void addResponse(response response){
        responseDao.addResponse(response);
    }
}
