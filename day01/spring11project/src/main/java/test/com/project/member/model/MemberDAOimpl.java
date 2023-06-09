package test.com.project.member.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAOimpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;

	public MemberDAOimpl() {
		log.info("MemberDAOimpl()...");
	}

	@Override
	public List<MemberVO> selectAll() {
		log.info("selectAll()...");

		return sqlSession.selectList("M_SELECT_ALL");
	}

	@Override
	public MemberVO selectOne(MemberVO vo) {
		log.info("selectOne()...{}", vo);

		return sqlSession.selectOne("M_SELECT_ONE", vo);
	}

	@Override
	public int insert(MemberVO vo) {
		log.info("insert()...{}", vo);

		return sqlSession.insert("M_INSERT", vo);
	}

	@Override
	public int update(MemberVO vo) {
		log.info("update()...{}", vo);

		return sqlSession.update("M_UPDATE", vo);
	}
	
	@Override
	public int delete(MemberVO vo) {
		log.info("delete()...{}", vo);

		return sqlSession.delete("M_DELETE", vo);
	}

}
