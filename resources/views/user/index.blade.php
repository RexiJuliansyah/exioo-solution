@extends('layouts.app')
@section('title', 'Users')
@section('breadcumb')
    <li><a href="javascript:void()">Master</a></li>
    <li class="active"><span>Users</span></li>
@endsection


@section('content')
<!-- Row -->
<div class="row">
<div class="panel panel-primary card-view mt-10">
    <div class="panel-heading pt-10 pb-10">
        <div class="pull-left">
            <h6 class="panel-title txt-light">Master / Pengguna</h6>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="panel-body">
        <div class="panel panel-primary card-view ma-0 pt-10 pb-10">
            
            <div class="row">
            <div class="col-sm-6">
                    <label class="control-label mb-10">Username</label>
                    <input type="text" class="form-control" id="search_username" name="search_username" placeholder="Username" value="">
                </div>
                <div class="col-sm-6">
                    <label class="control-label mb-10">Role</label>
                    <select name="search_role" id="search_role" class="selectpicker" data-style="form-control btn-default btn-outline">
                        <option value="">-- Semua --</option>
                        @foreach ($data['role_list'] as $role)
                            <option value="{{ $role->ROLE_ID }}">{{ $role->ROLE_NAME }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="button-list">
                        <div class="pull-left">
                            <button type="button" class="btn btn-primary btn-sm left-icon pr-10 pl-10" id="btn_add"><i class="fa fa-plus"></i> Tambah</button>
                            <!-- <button type="button" class="btn btn-warning btn-sm center-icon pr-10 pl-10" id="btn_edit" disabled><i class="fa fa-pencil"></i></button> -->
                            <button type="button" class="btn btn-danger btn-sm center-icon pr-10 pl-10" id="btn_delete" disabled><i class="fa fa-trash"></i></button>
                        </div>
                        <div class="pull-right">
                            <button type="button" class="btn btn-default btn-icon btn-sm left-icon pr-10 pl-10" id="btn_clear">Clear</button>
                            <button type="button" class="btn btn-primary btn-icon btn-sm left-icon pr-10 pl-10" id="btn_search"><i class="fa fa-search"></i>Cari</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default card-view ma-0 mt-10 pt-0">
            <table id="table-user" class="table table-bordered table-hover display">
                <thead class="thead-dark">
                    <tr>
                        <th style="width: 0px;">#</th>
                        <th>User Name</th>
                        <th>Fullname</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Created By</th>
                        <th>Created Date</th>
                    </tr>
                </thead>
                <tbody style="cursor:pointer">
                    
                </tbody>
            </table>

            <hr class="light-green-hr mb-10" />
        </div>
    </div>
</div>

@include('user._popup')

@endsection

@section('javascript')
    
    @include('user._javascript')
    <script type="text/javascript">
        var pChecked = null;
        // Table Row Click Event
        $(document).ready(function() {
            $('#table-user tbody').on('click', 'tr', function () {
                var data = table.row(this).data();
                var checkbox_grid = $('input[name="chkRow"][data-UserId="'+ data["USER_ID"] +'"]');

                if (checkbox_grid.is(":checked")) {
                    $(".grid-checkbox").prop("checked", false);
                    $(".grid-checkbox").parent().parent().removeClass('highlight-row');
                    checkbox_grid.parent().parent().removeClass('highlight-row');
                    checkbox_grid.prop("checked", false)
                } else {
                    $(".grid-checkbox").prop("checked", false);
                    $(".grid-checkbox").parent().parent().removeClass('highlight-row');
                    checkbox_grid.parent().parent().addClass('highlight-row');
                    checkbox_grid.prop("checked", true)
                }

                $("#btn_edit").prop("disabled", ($("input[name='chkRow']:checked").length == 1) ? false : true);
                $("#btn_delete").prop("disabled", ($("input[name='chkRow']:checked").length == 1) ? false : true);
            });
        });
        // End Table Row Click Event
    </script>
@endsection