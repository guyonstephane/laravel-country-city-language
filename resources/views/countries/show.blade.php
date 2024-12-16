@extends('countries.layout')

@section('content')

<div class="card mt-5 w-75 mx-auto">
  <h2 class="card-header">{{$country->nom}} <img src="{{ URL::to( $flag) }}"  ></h2>
  

  <div class="card-body">

    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <a class="btn btn-primary btn-sm" href="{{ route('countries.index') }}"><i class="fa fa-arrow-left"></i> Back</a>
    </div>


    <div class="row ">
           
        <div class ="col-xs-6 col-sm-6 col-md-6 mt-6">
            <div class="form-group">
                <strong>Population</strong> <br/>
                {{ Number::format($country->population, locale: 'sv') }}
            </div>
            <div class="form-group">
                <strong>Espérance de vie</strong> <br/>
                {{ $country->esperanceVie}}
            </div>
            <div class="form-group">
                <strong>Chef de l'État</strong> <br/>
                {{ $country->chefEtat}}
            </div>
            <div class="form-group">
                <strong>PNB</strong> <br/>
                {{ $country->PNB}}
            </div>
        </div>

        <div class="col-xs-6 col-sm-6 col-md-6">
            <div class="form-group">
                <div class="card p-2" style="width: 18rem;">
                    <div class="card-header text-white bg-primary">
                        Langues parlées
                    
                    </div>
                    <div class="card" >
                        <ul class="list-group list-group-flush">
                        @foreach ($langues->orderBy('pourcentage','desc')->get() as $langue)
                            <li class="list-group-item">{{ $langue->nom }} : {{ $langue->pivot->pourcentage }}%</li>
                        @endforeach
                        </ul>
                    </div>
                                    
                    
                </div>
            </div>
        </div>
        <div class="form-group">
                <br><strong>Principales villes :</strong> <br/>
                
            </div>
            <table class="table table-bordered table-striped mt-4">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Population</th>
                </tr>
            </thead>

            <tbody>
            @forelse ($cities as $city)
                <tr>
                    <td>{{ $city->nom }}</td>
                    <td>{{ $city->population }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="4">There are no data.</td>
                </tr>
            @endforelse
            </tbody>

        </table>
        {!! $cities->links() !!}

        </div>
    </div>

  </div>
</div>
@endsection
