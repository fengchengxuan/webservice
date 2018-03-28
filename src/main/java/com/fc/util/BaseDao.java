package com.fc.util;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Repository
public class BaseDao<T>{
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private T entity;

	public Session createSession(){
		return this.sessionFactory.getCurrentSession();
	}

	public Query createQuery(String hql){
		return createSession().createQuery(hql);
	}

	public T get(Class<T> entityClass, Serializable id){
		return (T) createSession().get(entityClass, id);
	}

	public T load(Class<T> entityClass, Serializable id){
		return (T) createSession().load(entityClass, id);
	}

	public void save(T entity){
		createSession().save(entity);
		createSession().flush();
	}

	public void update(T entity){
		Session session=sessionFactory.getCurrentSession();
		session.update(entity);
		session.flush();
	}

	public void saveOrUpdate(T entity){
		createSession().saveOrUpdate(entity);
		createSession().flush();
	}
	public void delete(T entity){
		createSession().delete(entity);
		createSession().flush();
	}

	public T findEntity(String hql, Object[] params){
		Query query = createQuery(hql);
		if (params.length > 0) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		List list=query.list();
		if (list!=null && list.size()>0) {
			return (T) list.get(0);
		}
		return null;
	}
	
	public List<T> findList(String hql, Object[] params){
		Query query = createQuery(hql);
		if (params.length > 0) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		return query.list();
	}
	public List<T> findList(String hql){
		Query query = createQuery(hql);
		return query.list();
	}

	public List<T> findList(String hql, Map<String, Object> params){
		Query query = createQuery(hql);
		if ((params != null) && (params.size() > 0)) {
			for (Map.Entry param : params.entrySet()) {
				query.setParameter((String)param.getKey(), param.getValue());
			}
		}
		return query.list();
	}

	public List<T> findList(String hql, int pageNo, int pageSize, Object[] params){
		Query query = createQuery(hql);
		if (params.length > 0) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		return query.setFirstResult(pageSize * (pageNo - 1)).setMaxResults(pageSize).list();
	}

	public List<T> findList(String hql, Map<String, Object> params, int pageNo, int pageSize){
		Query query = createQuery(hql);
		if ((params != null) && (params.size() > 0)) {
			for (Map.Entry param : params.entrySet()) {
				query.setParameter((String)param.getKey(), param.getValue());
			}
		}
		return query.setFirstResult(pageSize * (pageNo - 1)).setMaxResults(pageSize).list();
	}

	public List<T> getAll(){
		return createQuery("SELECT en FROM " + this.entity.getClass().getName() + " en").list();
	}

	public boolean checkExist(String hql, Object[] params){
		return findList(hql, params).size() > 0;
	}

	public boolean checkExist(String hql, Map<String, Object> params){
		return findList(hql, params).size() > 0;
	}

	public Long count(String hql, Object[] params){
		return Long.valueOf(findList(hql, params).size());
	}

	public Long count(String hql, Map<String, Object> params){
		return Long.valueOf(findList(hql, params).size());
	}

	public List<Map<String, Object>> findByjdbcTemplate(String sql){
		return this.jdbcTemplate.queryForList(sql);
	}

	public List<T> findList(String hql,List<String> list){
		Query query = createQuery(hql);
		if(list.size()>0){
			for(int i=0;i<list.size();i++){
				query.setString(i,list.get(i));
			}
		}
		return query.list();
	}
}