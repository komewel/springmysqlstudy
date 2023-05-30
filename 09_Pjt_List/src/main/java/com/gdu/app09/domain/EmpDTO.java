package com.gdu.app09.domain;

import java.util.Date; // mysql에서는 date 타입을 처리할때 쓰는 임포트 기능이다.

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmpDTO {

	private int employeeId;
	private String firstName;
	private String lastName;
	private String email;
	private String phoneNumber;
	private Date hireDate;
	private String jobId;
	private double salary;
	private double commissionPct;
	private int managerId;
	// private int departmentId;
	private DeptDTO deptDTO;
	
	
}
