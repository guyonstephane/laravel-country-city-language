<?php

namespace App\Http\Controllers;
    
use App\Models\Country;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\View\View;
use App\Http\Requests\CountryStoreRequest;
use App\Http\Requests\CountryUpdateRequest;
use App\CustomClasses\ColectionPaginate;
use App\Models\Language;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Support\Facades\DB;

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): View
    {
        if ($request->has('name')){
            $continent = $request->name ;
            //echo " $continent";

            $countries =DB::table('countries')
                    ->where('continent',"$continent")
                    ->paginate(7)
                    ->appends(request()->query());;
      
        }
        else {        
            $countries = Country::paginate(5);
        }
              
          
        return view('countries.index', compact('countries'));
                    
    }
    
    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('countries.create');
    }
    
    /**
     * Store a newly created resource in storage.
     */
    public function store(CountryStoreRequest $request): RedirectResponse
    {   
        Country::create($request->validated());
           
        return redirect()->route('countries.index')
                         ->with('success', 'country created successfully.');
    }
  
    /**
     * Display the specified resource.
     */
    public function show(Country $country): View
    {
        $flag = strtolower($country->code).".png";
        $flag = "images/flag/".$flag;
        //echo "images/drapeau/".$flag;
        if(!file_exists($flag))
           $flag = "images/drapeau/onu.png";
        $langues = Country::find($country->id)->langues();
        
        //print_r($langues);
        
        $cities = Country::find($country->id)->cities->toQuery()->orderBy('population', 'desc')->paginate(5);
        //print_r($cities);
        return view('countries.show',compact('country','cities','langues','flag'));
    }
  
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Country $country): View
    {
        return view('countries.edit',compact('country'));
    }
  
    /**
     * Update the specified resource in storage.
     */
    public function update(CountryUpdateRequest $request, Country $country): RedirectResponse
    {
        $country->update($request->validated());
          
        return redirect()->route('countries.index')
                        ->with('success','country updated successfully');
    }
  
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Country $country): RedirectResponse
    {
        $country->delete();
           
        return redirect()->route('countries.index')
                        ->with('success','country deleted successfully');
    }

    public static function getCapitale( $id)
    {
        $capitale =DB::table('cities')->find($id);
                   
        
        return $capitale->nom;
    }

    public static function getFlag( $id)
    {
        $flag =DB::table('countries')->find($id)->code;
        $flagPays = "/images/flag/".strtolower($flag).".png";
                
        return $flagPays;
    }

    public static function getcontinent()
    {
        $continents =DB::table('countries')
                ->distinct()
                ->get(['continent']);

                return $continents;
            
    }
}