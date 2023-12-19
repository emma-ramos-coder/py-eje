@extends('layouts.app')

@section('template_title')
{{__('Proveedor')}}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Proveedor') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('suppliers.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Crear Proveedor') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>

										<th>Numero de documento</th>
										<th>Tipo de documento</th>
										<th>Nombres</th>
										<th>Apellidos</th>
										<th>Nombre comercial</th>
										<th>Dirección</th>
										<th>Ciudad</th>
										<th>Teléfono</th>
                                        <th width="300px"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($suppliers as $supplier)
                                        <tr>
                                            <td>{{ ++$i }}</td>

											<td>{{ $supplier->document_number }}</td>
											<td>{{ $supplier->documentType->description }}</td>
											<td>{{ $supplier->name }}</td>
											<td>{{ $supplier->surname }}</td>
											<td>{{ $supplier->tradename }}</td>
											<td>{{ $supplier->address }}</td>
											<td>{{ $supplier->city->city_name }}</td>
											<td>{{ $supplier->phone }}</td>

                                            <td width="300px">
                                                <form action="{{ route('suppliers.destroy',$supplier->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('suppliers.show',$supplier->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Mostrar') }}</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('suppliers.edit',$supplier->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Editar') }}</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Eliminar') }}</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $suppliers->links() !!}
            </div>
        </div>
    </div>
@endsection
