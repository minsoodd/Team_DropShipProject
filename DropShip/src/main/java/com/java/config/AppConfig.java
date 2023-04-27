package com.java.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class AppConfig {
	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		// dataSource 정보를 가져옴.
		sessionFactory.setDataSource(dataSource);
		// Mapper.xml 정보를 가져옴. - 1개면 변수로, 여러개 받으려면 배열로 받아야
		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:/mapper/**/*.xml"); // ** : 모든폴더
		sessionFactory.setMapperLocations(res);
		
		return sessionFactory.getObject();
	}// sqlSessionFactory 
	
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}// 한개의 connection 가져온거나 마찬가지.
	
	
}
