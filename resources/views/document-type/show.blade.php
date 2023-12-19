@extends('layouts.app')

@section('template_title')
    {{ __('Mostrar Tipos de documento')}}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Mostrar Tipos de documento')}}</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary my-3" href="{{ route('document-types.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Descripción:</strong>
                            {{ $documentType->description }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
