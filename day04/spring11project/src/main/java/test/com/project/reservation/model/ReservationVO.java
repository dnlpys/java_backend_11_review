package test.com.project.reservation.model;

import java.sql.Date;

import lombok.Data;

@Data
public class ReservationVO {

	private int num;
	private String user_id;
	private int movie_num;
	private Date regdate;
	private String movie_date;
	private int mcount;
}
