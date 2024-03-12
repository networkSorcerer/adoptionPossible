<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
	
<body>
	<div class="text-center">
			<table class="table table-bordered">
				<thead>
					<tr>
						
						<td class="col_3">동물 ID</td>
						<td>${detail.animalId }</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="4">
							<table class="table mb-0">
								
								<tr>
									<c:if test="${not empty detail.animalFile }">		
										<td class="text-start" rowspan="9">
											<img src="/uploadStorage/animal/${detail.animalFile }" class="rounded" width="300px"/>
										</td>		
									</c:if>
									<td class="col-3">이름</td>
									<td class="text-start">${detail.animalName }</td>
								</tr>
								<tr>
									<td>분류</td>
									<td class="text-start">${detail.animalSpecies }</td>
								</tr>
								<tr>
									<td>성별</td>
									<td class="text-start">${detail.animalGender }</td>
								</tr>
								<tr>
									<td>무게</td>
									<td class="text-start">${detail.animalKg }</td>
								</tr>
								<tr>
									<td>나이</td>
									<td class="text-start">${detail.animalAge }</td>
								</tr>
								<tr>
									<td>색깔</td>
									<td class="text-start">${detail.animalColor }</td>
								</tr>
								<tr>
									<td>중성화 유무</td>
									<td class="text-start">${detail.animalStatus }</td>
								</tr>
								<tr>
									<td>특이사항</td>
									<td class="text-start">${detail.animalMemo }</td>
								</tr>
								<tr>
									<td>임시보호 유무</td>
									<td class="text-start">${detail.animalTemp }</td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>	
</body>
</html>