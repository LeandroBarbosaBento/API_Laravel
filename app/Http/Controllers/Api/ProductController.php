<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    private $product;
    private $category;

    public function __construct(Product $product, Category $category)
    {
        $this->product = $product;
        $this->category = $category;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return [
            "data" => $this->product->get()
        ];
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->filled('name') && $request->filled('description') && $request->filled('price') && $request->filled('category_id'))
        {
            if($this->category->find($request->category_id)){

                $product = $this->product->create($request->all());

                $data = [
                    "status" => "sucesso",
                    "data"   => $product
                ];

            }
            else{

                $data = [
                    "status" => "error",
                    "data"   => "Category not found."
                ];

            }

        }
        else{
            $data = [
                "status" => "error",
                "message" => "All fields required."
            ];
        }

        return $data;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if($this->product->find($id)){
            $data = [
                "status" => "success",
                "data"   => $this->product->find($id)
            ];
        }
        else{
            $data = [
                "status"  => "error",
                "message" => "Product not found!"
            ];
        }
        return $data;
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
        $product = $this->product->find($id);

        if($request->filled('name') && $request->filled('description') && $request->filled('price') && $request->filled('category_id')){
            
            if($product){

                if($this->category->find($request->category_id)){

                    $product->name = $request->name;
                    $product->description = $request->description;
                    $product->price = $request->price;
                    $product->category_id = $request->category_id;

                    $product->save();

                    $data = [
                        "status" => "success",
                        "data"   => $product
                    ];
                } else {
                    $data = [
                        "status" => "error",
                        "data"   => "Category not found."
                    ];
                }
            }
            else {
                $data = [
                    "status"  => "error",
                    "message" => "Product not found."
                ];
            }
        }
        else {
            $data = [
                "status"  => "error",
                "message" => "All fields required."
            ];
        }

        return $data;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = $this->product->find($id);
        if($product){
            $product->delete();
            $data = [
                "status"  => "success",
                "message" => "Product deleted."
            ];
        }
        else {
            $data = [
                "status"  => "error",
                "message" => "Product not found."
            ];
        }
        return $data ;
    }
}
