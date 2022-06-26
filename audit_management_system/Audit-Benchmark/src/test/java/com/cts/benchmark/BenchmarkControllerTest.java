package com.cts.benchmark;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.test.context.ContextConfiguration;

import com.cts.benchmark.feignclient.AuthClient;
import com.cts.benchmark.service.TokenService;


/**
 * 
 * Test class for BenchmarkController 
 */

@ContextConfiguration 
@SpringBootTest
public class BenchmarkControllerTest {

	/**
	 * Mocking all required objects
	 */
	@Mock
	AuthClient authClient;
		
	@Mock
	TokenService tokenService;
	
	@Mock
	Environment env;
	
	@Mock
	AuditBenchmark auditBenchmark;
	@InjectMocks
	BenchmarkController controller;
	
	/**
	 * Testing the methods
	 */
	@Test
	public void testGetBenchmarkMap() {
		List<AuditBenchmark> auditBenchmarkList = new ArrayList<>();
		auditBenchmarkList.add(new AuditBenchmark("Internal", 3));
		auditBenchmarkList.add(new AuditBenchmark("SOX", 1));
		when(tokenService.checkTokenValidity("token")).thenReturn(true);
		assertEquals(auditBenchmarkList,controller.getBenchmarkMap("token").getBody());
	}
	
	@Test
	public void testTokenInvalid() {
		when(tokenService.checkTokenValidity("token")).thenReturn(false);
		assertEquals(HttpStatus.FORBIDDEN,controller.getBenchmarkMap("token").getStatusCode());
	}
}
