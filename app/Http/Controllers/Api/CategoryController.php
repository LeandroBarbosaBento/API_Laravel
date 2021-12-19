<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{

    private $category;
    private $product;

    public function __construct(Category $category, Product $product)
    {
        $this->category = $category;
        $this->product = $product;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ["data" => $this->category->get()];
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->filled('name')){
            $category = $this->category->create($request->all());
            $data = [
                "status" => "success",
                "data"   => $category
            ];
        }
        else {
            $data = [
                "status" => "error",
                "data"   => "All fields required."
            ];
        }
        return $data ;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $category = $this->category->find($id);

        if($category){
            $data = [
                "status" => "success",
                "data"   => $category
            ];
        }
        else{
            $data = [
                "status" => "error",
                "data"   => "Category not found."
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
        if($request->filled('name')){

            $category = $this->category->find($id);

            if($category){
                $category->name = $request->name;
                $category->save();
                $data = [
                    "status" => "success",
                    "data"   => $category
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
                "data"   => "All fields required."
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
        /**
         * Adicionar verificação de existência de produtos
         * Apagar produtos que são dessa categoria
         *
         */

        $category = $this->category->find($id);

        if($category){

            $this->product->where('category_id', $id)->delete();

            $category->delete();

            $data = [
                "status"  => "success",
                "message" => "Category deleted."
            ];

        }
        else{
            $data = [
                "status"  => "error",
                "message" => "Category not found."
            ];
        }

        return $data;
    }
}
