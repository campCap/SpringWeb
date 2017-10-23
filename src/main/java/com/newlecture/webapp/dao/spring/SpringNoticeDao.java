package com.newlecture.webapp.dao.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.support.TransactionTemplate;

import com.newlecture.webapp.dao.NoticeDao;
import com.newlecture.webapp.entity.Notice;
import com.newlecture.webapp.entity.NoticeView;

public class SpringNoticeDao implements NoticeDao {
	
	@Autowired
	private JdbcTemplate template;
	
	@Autowired
	private TransactionTemplate transactionTemplate;
	/*@Autowired
	private PlatformTransactionManager transactionManager;*/

	@Override
	public List<NoticeView> getList(int page, String field, String query) {
		
		String sql = "select * from NoticeView where "+field+" like ? order by regDate desc limit ?, 10";
		
		List<NoticeView> list = template.query(sql,
											new Object[] {"%"+query+"%", (page-1)*10},
											BeanPropertyRowMapper.newInstance(NoticeView.class));
		
		return list;
	}

	@Override
	public int getCount() {
		
		String sql = "select count(*) `count` from Notice";
		
		int count = template.queryForObject(sql, Integer.class);
		
		return count;
	}

	@Override
	public NoticeView get(String id) {
		
		String sql = "select * from Notice where id = ?";
		
		NoticeView noticeView = template.queryForObject(sql,
														new Object[] {id}, /*<== SQL 문에 들어갈 인자*/
														BeanPropertyRowMapper.newInstance(NoticeView.class));
		
		/*DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&useSSL=false&;useUnicode=true&characterEncoding=utf8");
		dataSource.setUsername("sist");
		dataSource.setPassword("cclass");*/
		
		/*JdbcTemplate template = new JdbcTemplate();
		template.setDataSource(dataSource);*/
		
		
		return noticeView;
	}

	@Override
	public int update(String id, String title, String content) {
		String sql ="update Notice set title = ?, content = ? where id = ?";
		
		int result = template.update(sql, title, content, id);
		
		return result;
	}

	@Override
	public NoticeView getPrev(String aaid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticeView getNext(String aaid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(String title, String content, String writerId) {
		
		return insert(new Notice(title, content, writerId));
	}
	
	@Override
	public int insert(Notice notice) {
		String sql = "insert into Notice(id, title, content, writerId) values(?, ?, ?, ?);";
		String sql1 = "update Member set point = point + 1 where id = ?";
		
		int result = 0;
		result += template.update(sql,
						getNextId(),
						notice.getTitle(),
						notice.getContent(),
						notice.getWriterId());
				
		result += template.update(sql1, notice.getWriterId());
				
		return result;
	}
	
	/*트랜잭션 처리방법 2
	 * 트랜잭션템플릿을 처리하는방법
	 * @Override
	public int insert(Notice notice) {
		String sql = "insert into Notice(id, title, content, writerId) values(?, ?, ?, ?);";
		String sql1 = "update Member set point = point + 1 where id = ?";
		
		int result = 0;
		
		result = (int) transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				
				template.update(sql,
						getNextId(),
						notice.getTitle(),
						notice.getContent(),
						notice.getWriterId());
				
				template.update(sql1, notice.getWriterId());
				
			}
		});

		return result;
	}*/
	
	
	/*트랜잭션 매니저를 직접사용하는 방법, 처리방법 1
	 * 
	 * @Override
	public int insert(Notice notice) {
		String sql = "insert into Notice(id, title, content, writerId) values(?, ?, ?, ?);";
		String sql1 = "update Member set point = point + 1 where id = ?";
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus state = transactionManager.getTransaction(def);
		
		try {
		int result = template.update(sql,
									getNextId(),
									notice.getTitle(),
									notice.getContent(),
									notice.getWriterId());
		
		result += template.update(sql1, notice.getWriterId());

		transactionManager.commit(state);
		
		return result;
		}
		catch(Exception e)
		{
			transactionManager.rollback(state);
			throw e;
		}
	}*/

	@Override
	public String getNextId() {
		String sql = "select ifnull(max(cast(id as unsigned)), 0) + 1 from Notice";
		
		String nextId = template.queryForObject(sql, String.class);
		
		return nextId;
	}

}
