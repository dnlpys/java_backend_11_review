package test.com.project.board.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class BoardDAOimpl implements BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public BoardDAOimpl() {
		log.info("BoardDAOimpl....");
	}

	@Override
	public int insert(BoardVO vo) {
		log.info("insert()....{}",vo);
		return 0;
	}

	@Override
	public int update(BoardVO vo) {
		log.info("update()....{}",vo);
		return 0;
	}

	@Override
	public int delete(BoardVO vo) {
		log.info("delete()....{}",vo);
		return 0;
	}

	@Override
	public List<BoardVO> selectAll() {
		log.info("selectAll()....");
		return null;
	}

	@Override
	public BoardVO selectOne(BoardVO vo) {
		log.info("selectOne()....{}",vo);
		return null;
	}

	@Override
	public List<BoardVO> searchList(String searchKey, String searchWord) {
		log.info("searchList()....searchKey:{}",searchKey);
		log.info("searchList()....searchWord:{}",searchWord);
		return null;
	}

	@Override
	public void vcountUp(BoardVO vo) {
		log.info("vcountUp()....{}",vo);

	}

}
