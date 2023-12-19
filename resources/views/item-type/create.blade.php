@extends('layouts.app')

@section('template_title')
    {{ __('Crear Tipos de artículo')}}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">{{ __('Crear Tipo de artículo')}}</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('item-types.store') }}"  role="form" enctype="multipart/form-data">
                            @csrf

                            @include('item-type.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection