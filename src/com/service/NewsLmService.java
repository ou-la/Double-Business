package com.service;

import java.util.List;

import com.entity.NewsLm;
import com.service.base.BaseService;

public interface NewsLmService extends BaseService<NewsLm>{

	Integer delAll(List stuList);

	List<NewsLm> find(NewsLm o);

}
