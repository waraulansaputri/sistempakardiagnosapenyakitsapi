@extends('layouts.default')
@section('content')
<div class="card mb-5">
	<div class="card-header">
		{{ $item->nama_penyakit }}
	</div>
	<div class="card-body">
		<div class="form-group">
			<label for="nama_penyakit">Nama Penyakit</label>
			<input type="text" name="nama_penyakit" class="form-control" value="{{ $item->nama_penyakit }}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="kulturteknis">Solusi</label>
			<textarea class="form-control" name="kulturteknis" readonly="readonly">{{ $item->solusi }}</textarea>
		</div>
		
	</div>
</div>

<div class="card">
	<div class="card-header">
		Daftar Gejala
	</div>
	<div class="card-body">
		<table class="table table-hover" id="gejalaList_penyakit" data-url="{{ route('detail.penyakit.gejala', $item->id) }}">
			<thead>
				<tr>
					<th>Nama Gejala</th>
				</tr>
			</thead>
		</table>
	</div>
</div>

@endsection
@push('scriptku')
<script type="text/javascript">
    var gejalaList_penyakit = $('#gejalaList_penyakit').DataTable({
        processing: true,
        serverSide: true,
        ajax: $('#gejalaList_penyakit').data('url'),
        columns: [
            { data: 'gejala.nama_gejala', name:'gejala.nama_gejala'}
           
        ]
    });	
</script>
@endpush