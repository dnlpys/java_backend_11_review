package test.com.project.member.model;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAOimpl implements MemberDAO {

	public MemberDAOimpl() {
		log.info("MemberDAOimpl()...");
	}
	
}
