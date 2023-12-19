@extends('layouts.app')

@section('template_title')
{{__('Venta')}}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Venta') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('sales.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Crear Venta') }}
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
                            <table id="order-listing" class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
										<th>Cliente</th>
										<th>Vendedor</th>
										<th>Fecha de factura</th>
										<th>Forma de pago</th>
										<th>Total factura</th>
										<th>IGV</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($sales as $sale)
                                        <tr>
                                            <td>{{ $sale->id }}</td>
											<td>{{ $sale->customer->document_number }}</td>
											<td>{{ $sale->user->name }}</td>
											<td>{{ $sale->invoice_date }}</td>
											<td>{{ $sale->wayToPay->way_to_pay_description }}</td>
											<td>{{ $sale->total_invoice }}</td>
											<td>{{ $sale->igv }}</td>

                                            <td>

                                                    <a class="btn btn-sm btn-primary" href="{{ route('sales.show',$sale->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Mostrar') }}</a>

                                                    <a class="btn btn-sm btn-secondary" href="{{ route('sale.pdf',$sale->id) }}" ><i class="fa fa-file-pdf-o"></i>  PDF</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $sales->links() !!}
            </div>
        </div>
    </div>
@endsection
