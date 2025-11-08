 <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
 
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 
 
 
 
 
 
 <link rel="stylesheet" href="https://cdn.datatables.net/2.3.4/css/dataTables.dataTables.min.css" />
<script src="https://cdn.datatables.net/2.3.4/js/dataTables.min.js"></script>
<script>
    $(document).ready(function(){
        let table = new DataTable('#mytable');
    })
</script>




 
 
 
 
 
 
 
 
 <%
            try {
                String msg = request.getParameter("msg");
                if (msg != null && msg != "") {
        %>
        <script>
            Swal.fire({
                title: "Good job!",
                text: "<%= msg %>",
                icon: "success"
            });
        </script>

        <%
                }
            } catch (Exception ex) {
            }

        %>
          <%
            try {
                String error = request.getParameter("error");
                if (error != null && error != "") {
        %>
        <script>
            Swal.fire({
                title: "OOPs!",
                text: "<%= error %>",
                icon: "error"
            });
        </script>

        <%
                }
            } catch (Exception ex) {
            }

        %>