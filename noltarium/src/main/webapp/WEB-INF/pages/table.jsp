<%@ include file="defaultIncludes.jsp"%>
<body>

	<div data-role="page">
		<div data-role="navbar">
			<jsp:include page="navigation.jsp" />
		</div>
		<!-- /navbar -->

		<div data-role="header">
			<h1>Willkommen</h1>
		</div>
		<div data-role="content">
			<p>Test Tabelle</p>
			<table class="hor-zebra" id="resultsTable" data-role="tableview">
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