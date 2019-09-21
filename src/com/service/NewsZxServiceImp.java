package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.entity.Fjgx;
import com.entity.NewsZx;
import com.repository.FjgxDao;
import com.repository.NewsZxDao;
import com.service.base.BaseServiceImp;

@Service("NwesZxService")
public class NewsZxServiceImp extends BaseServiceImp<NewsZx> implements NewsZxService{
	@Autowired
	private NewsZxDao newszxDao;
	@Autowired
	private FjgxDao fjgxDao;
	
	/**
	 * 查询方法
	 */
	@Override
	public List<NewsZx> find() {
		List<NewsZx> nz = newszxDao.find();
		return nz;
	}

	/**
	 * 树状
	 */
	@Override
	public List<NewsZx> findTree(NewsZx O) {
		return newszxDao.findTree(O);
	}

	/**
	 * 添加附件
	 */
	@Transactional
	@Override
	public void insertFj(NewsZx n, String fjId) {
		String newsId = UuidUtil.get32UUID();
		n.setNewsid(newsId);
		super.insert(n);
		if(!fjId.equals("")) {
			if(fjId.indexOf(",")>-1) {
				String fjIdArr[] = fjId.split(",");
				for (int i = 0; i < fjIdArr.length; i++) {
					Fjgx fjgx = new Fjgx();
					fjgx.setFjgxid(UuidUtil.get32UUID());
					fjgx.setNewsid(newsId);
					fjgx.setFjid(fjIdArr[i]);
					fjgxDao.insert(fjgx);
				}
			}else {
				Fjgx fjgx = new Fjgx();
				fjgx.setFjgxid(UuidUtil.get32UUID());
				fjgx.setNewsid(newsId);
				fjgx.setFjid(fjId);
				fjgxDao.insert(fjgx);
			}
		}
	}

	/**
	 * 批量删除
	 */
	@Override
	public Integer delAll(List stuList) {
		newszxDao.delAll(stuList);
		return null;
	}


}
