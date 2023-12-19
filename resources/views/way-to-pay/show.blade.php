@extends('layouts.app')

@section('template_title')
    {{ __('Mostrar Forma de pago') }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Mostrar Forma de pago')}}</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary my-3" href="{{ route('way-to-pays.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Descripción de la forma de pago:</strong>
                            {{ $wayToPay->way_to_pay_description }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
