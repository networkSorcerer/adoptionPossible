<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
	<div class ="container">
		<div class="text-center"><h3>입양 가능 동물 리스트</h3></div>
		
		<div id="animalSearch" class="text-right"></div>
		
		<div id="apList">
			<table summary="게시판 리스트" class="table table-striped">
				<thead>
					<tr class="text-center">
						<th class="col-md-1">동물 ID</th>
						<th class="col-md-1">사진</th>
						<th class="col-md-1">이름</th>
						<th class="col-md-1">분류</th>
						<th class="col-md-1">무게</th>
						<th class="col-md-1">중성화 유무</th>
						<th class="col-md-1">성별</th>
						<th class="col-md-1">임시보호 유무</th>
						<th class="col-md-2">작성일</th>
						<th class="col-md-1">조회수</th>
					</tr>
				</thead>
				<tbody id="list">
					<c:choose>
						<c:when test="${not empty apList }">
							<c:forEach var="animal" items="${apList }" varStatus="status">
								<tr class = "text-center id" data-num="${ animal.animalId}">
									
									<td>${animal.animalId}</td>
									<td>
										<c:if test="${not empty animal.animalFile }">
											<img src="/uploadStorage/animal/${animal.animalFile}"
											class="rounded w-50 h-50"/>
										</c:if>
										<c:if test="${empty animal.animalFile }">
											<img src="/resources/images/common/noimage.jpg"
											class="rounded w-100 h-100"/>
										</c:if>
									</td>
									<td class="goDetail text-start">
									${animal.animalName}
									</td>
									<td class="species">${animal.animalSpecies }</td>
									<td class="kg">${animal.animalKg }</td>
									<td class="status">${animal.animalStatus }</td>
									<td class="gender">${animal.animalGender }</td>
									<td class="temp0">${animal.animalTemp }</td>
									<td class="regist">${animal.animalRegist}</td>
									<td class ="readcnt">${animal.readcnt }</td>
									
							</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="5" class ="text-center">등록된 게시물이 존재하지 않습니다</td>
						</tr>
						</c:otherwise>
					</c:choose>	
				</tbody>
			</table>
		</div>
		
	</div>
	<script src="/resources/include/js/apList.js"></script>
</body>