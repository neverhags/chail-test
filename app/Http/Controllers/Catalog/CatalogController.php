<?php

namespace App\Http\Controllers\Catalog;

use Illuminate\Http\Request;
use App\Model\Hotels;
use App\Http\Controllers\Controller;

class CatalogController extends Controller
{
    public function __construct()
    {
    }
    /**
     * Display a listing of the resource for admin.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('catalog.catalog', [
            'hotels' => Hotels::all()
        ]);
    }

    public function home()
    {
        return view('catalog.catalog', [
            'hotels' => Hotels::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('catalog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validData = $request->validate([
            'name' => 'required|min:3|max:50',
            'imageUrl' => 'required',
            'stars' => 'required|numeric|min:0|max:5',
            'description' => 'required|min:3',
            'address' => 'required|min:7',
            'telephone' => 'required',
        ]);

        $newElement = new Hotels();
        $newElement->name = $validData['name'];
        $newElement->imageUrl = $validData['imageUrl'];
        $newElement->stars = $validData['stars'];
        $newElement->description = $validData['description'];
        $newElement->address = $validData['address'];
        $newElement->telephone = $validData['telephone'];
        $newElement->save();

        return redirect('/admin');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $hotel = Hotels::findOrFail($id);
        return view('catalog.show', [
            'hotel' => $hotel
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $hotel = Hotels::findOrFail($id);
        return view('catalog.edit', [
            'hotel' => $hotel
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validData = $request->validate([
            'name' => 'required|min:3|max:50',
            'imageUrl' => 'required',
            'stars' => 'required|numeric|min:0|max:5',
            'description' => 'required|min:3',
            'address' => 'required|min:7',
            'telephone' => 'required',
        ]);

        $newElement = Hotels::findOrFail($id);;
        $newElement->name = $validData['name'];
        $newElement->imageUrl = $validData['imageUrl'];
        $newElement->stars = $validData['stars'];
        $newElement->description = $validData['description'];
        $newElement->address = $validData['address'];
        $newElement->telephone = $validData['telephone'];
        $newElement->save();
        return redirect('/admin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $report = Hotels::findOrFail($id);
        $report->delete();
        return redirect('/admin');
    }
    /**
     * Search name and description in Hotels.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request) {
        $search = $request->get('search');
        $result = Hotels::where([
            ['name', 'LIKE', '%'.$search.'%'],
            ['description', 'LIKE', '%'.$search.'%'],
        ])->take(10)->get();
        return $result;
    }
}
