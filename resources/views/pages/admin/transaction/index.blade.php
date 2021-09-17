@extends('layouts.admin')

@push('table-style')
 <link href="{{ url('backend/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
@endpush
@section('content')
 <!-- Begin Page Content -->
 <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800"> Transaksi</h1>

      {{-- success input --}}
      @if ($message = Session::get('success'))
				<div class="alert alert-success alert-block">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>{{ $message }}</strong>
				</div>
                @endif
                {{-- Succes update --}}
                 @if ($message = Session::get('update'))
				<div class="alert alert-warning alert-block">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>{{ $message }}</strong>
				</div>
                @endif
                {{-- success delete --}}
                @if ($message = Session::get('delete'))
				<div class="alert alert-danger alert-block">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>{{ $message }}</strong>
				</div>
				@endif

    </div>

<!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                 <div class="table-responsive">
                     <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Travel</th>
                            <th>User</th>
                            <th>Visa</th>
                            <th>Total </th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse ($items as $item)

                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->travel_package->title }}</td>
                        <td>{{ $item->user->name }}</td>
                        <td>{{ $item->additional_visa }}</td>
                        <td>{{ $item->transaction_total }}</td>
                        <td>{{ $item->transaction_status }}</td>
                        <td><a href="{{ route('transaction.edit', $item->id) }}" class="btn btn-info">
                            <i class="fa fa-pencil-alt"></i>
                        </a>
                        <a href="{{ route('transaction.show', $item->id) }}" class="btn btn-primary">
                            <i class="fa fa-eye"></i>
                        </a>
                        <a href="#" data-toggle="modal" data-target="#delete{{ $item->id }}" class="btn btn-danger">
                            <i class="fa fa-trash-alt"></i>
                        </a>

                        </td>
                </tr>
                    @empty
                    <tr>
                            <td colspan="7" class="text-center">
                                Data kosong
                            </td>

                        </tr>
                    @endforelse
                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

  </div>
  @foreach ($items as $item)


   <!-- Delete Modal-->
  <div class="modal fade" id="delete{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Are you sure,for delete item {{ $item->travel_package->title }} ?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {{-- <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div> --}}
        <div class="modal-footer">
          <form action="{{  route('transaction.destroy', $item->id) }}" method="POST" class="d-inline ">
                         @csrf
                         @method('delete')
                         <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <button class="btn btn-primary" type="submit" >Delete</button>
                        </form>
        </div>
      </div>
    </div>
  </div>
  @endforeach

  @push('table-script')
<!-- Page level plugins -->
    <script src="{{ url('backend/vendor/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('backend/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Page level custom scripts -->
    <script src="{{ url('backend/js/demo/datatables-demo.js') }}"></script>
  @endpush
  <!-- /.container-fluid -->

@endsection
