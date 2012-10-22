<%@ include file="defaultIncludes.jsp"%>

<body>
	<div id="navigation">
		<jsp:include page="navigation.jsp" />
	</div>
	<div id="content">
		<h1>Tabellen Tet Seite Seite : ${message}</h1>
		<div style='width: 800px;'>
			<table class="display" id="resultsTable" cellpadding="0" cellspacing="0" border="0">
				<thead>

					<tr>
						<th>t1</th>
						<th>t2</th>
						<th>t3</th>
					</tr>
				</thead>
				<c:forEach items="${exampleObjects}" var="example">
					<tr>
						<td>${example.firstname}</td>
						<td>${example.lastname}</td>
						<td>${example.comment}</td>
					</tr>
				</c:forEach>
			</table>

 

		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#resultsTable').dataTable();
		});
	</script>
</body>
</html>