
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc/header.jsp" %>

  <!-- Main Sidebar Container -->
  <%@include file="/templates/admin/inc/menu.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Sinh viên</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
              <li class="breadcrumb-item active">Sinh viên</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      
	%>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalThem">Thêm</button>
	<table class="table table-bordered" id="datatable">
	  <thead class="thead-CCFFFF">
	    <tr class="list-header">
	      <th scope="col">#</th>
	      <th scope="col">Mã Sinh viên</th>
	      <th scope="col">Tên Sinh viên</th>
	      <th scope="col">Địa chỉ</th>
	      <th scope="col">Số điện thoại</th>
	      <th scope="col">Lớp</th>
	      <th scope="col">Chức năng</th>
	    </tr>
	  </thead>
	  <tbody>

	  
	  </tbody>
	</table>
	
			      	
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    <!-- Modal -->
<div class="modal fade" id="modalThem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm sinh viên</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action ="/views/admin/sinhvien" method="post">
        
        	<div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Mã sinh viên</label>
			    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="masv">
			  </div>
			  <div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Tên sinh viên</label>
			    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="tensv">
			  </div>
			  <div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Địa chỉ</label>
			    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="diachi">
			  </div>
			  <div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Số điện thoại</label>
			    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="sdt">
			  </div>
			  <div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Email</label>
			    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="email">
			  </div>
			  <div class="form-group row">
			    <label for="exampleFormControlFile1" class="col-sm-3">Lớp</label>
			   
			 
			  </div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
		        <button type="submit" class="btn btn-primary">Thêm</button>
		      </div>        
        </form>
      </div>
    </div>
  </div>
</div>
  </div>
 <script type="text/javascript">
  $(document).ready(function(){
	  $("form").submit(function(event){
		  event.preventDefault();
		  var formData = new FormData(this);
		  $.ajax({
			  url:"input",
			  type: "post",
			  data: formData,
			  success: function(data){
				  var row = data;
				  for(i = 0;i < row.length;i++){
					  var column = row[i];
					  var eachrow = "<tr>";
					  for(j = 0; j < column.lenght;j++){
						  eachrow = eachrow+"<td>" + column[j]+ "</td>";
					  }
					  eachrow = eachrow + "</td>";
					  $('#tbody').append(eachrow);
				  }
			  },
			  cache:false,
			  contentType: false,
			  processData: false
		  })
	  })
  }
</script>
  <!-- /.content-wrapper -->
  <%@include file="/templates/admin/inc/footer.jsp" %>

    