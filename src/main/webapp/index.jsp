<%--
  Created by IntelliJ IDEA.
  User: celem
  Date: 4/19/2019
  Time: 2:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
        <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/scripts/jquery.dataTables.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $.ajax("TaskServlet",
                        {
                            method: "GET",
                            dataType: "json"
                        }).done(function (data) {
                    console.log(data);
                    table = $("#datatable").DataTable({
                        data: data,
                        sort: true,
                        searching: true,
                        paging: true,
                        aLengthMenu: [[2, 5, 10, -1], [2, 5, 10, "All"]],
                        iDisplayLength: 10,
                        columns: [
                            {'data': 'id'},
                            {'data': 'status'},
                            {'data': 'categoryId.name'},
                            {'data': 'taskOwnerId.username'},
                            {'data': 'projectManagerId.username'},
                            {'data': 'priority'},
                            {'data': 'name'},
                            {'data': 'dueDate'}
                        ]
                    });

                    $('#datatable tbody').on('click', 'tr', function () {
                        alert(table.row(this).data().id);
                    });

                    // Setup - add a text input to each footer cell
                    $('#datatable tfoot tr').clone(true).appendTo('#datatable tfoot');
                    $('#datatable tfoot tr:eq(1) th').each(function (i) {
                        title = $(this).text();
                        $(this).html('<input type="text" placeholder="Search ' + title + '" />');

                        $('input', this).on('keyup change', function () {
                            if (table.column(i).search() !== this.value) {
                                table.column(i).search(this.value).draw();
                            }
                        });
                    });
                }).always(function () {

                }).fail(function () {

                });

            });
        </script>
    </head>
    <body>
        <table id="datatable" class="display">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Status</th>
                    <th>Category</th>
                    <th>Owner</th>
                    <th>Project Manager</th>
                    <th>Priority</th>
                    <th>Task name</th>
                    <th>Due Date</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Status</th>
                    <th>Category</th>
                    <th>Owner</th>
                    <th>Project Manager</th>
                    <th>Priority</th>
                    <th>Task name</th>
                    <th>Due Date</th>
                </tr>
            </tfoot>
        </table>

        <style type="text/css">
            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5px auto; /* 15% from the top and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button */
            .close {
                /* Position it in the top right corner outside of the modal */
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }

            /* Close button on hover */
            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {-webkit-transform: scale(0)}
                to {-webkit-transform: scale(1)}
            }

            @keyframes animatezoom {
                from {transform: scale(0)}
                to {transform: scale(1)}
            } 
        </style>

        <script>
// Get the modal
            var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            }
        </script> 
        <!-- Button to open the modal login form -->
        <button onclick="document.getElementById('id01').style.display = 'block'">New Task</button>
        <div id="id01" class="modal">
            <span onclick="document.getElementById('id01').style.display = 'none'"
                  class="close" title="Close Modal">&times;</span>

            <!-- Modal Content -->
            <form class="modal-content animate" action="/action_page.php">
                <div class="imgcontainer">
                    <img src="img_avatar2.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="uname" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="psw" required>

                    <button type="submit">Login</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </form>
        </div>

    </body>
</html>