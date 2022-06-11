<?php

namespace App\Http\Controllers;

use App\Components\Recusive;
use App\Models\Category;
use App\Models\Product;
use App\Models\Tag;
use Illuminate\Http\Request;
use App\Traits\storageImageTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Models\ProductImage;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ProductAddRequest;
use App\Http\Requests\ProductEditRequest;
use App\Traits\DeleteModelTrait;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $product;
    private $category;
    private $product_image;
    private $tag;

    use storageImageTrait;
    use DeleteModelTrait;

    public function __construct(Product $product, Category $category, ProductImage $productImage, Tag $tag)
    {
        $this->product = $product;
        $this->category = $category;
        $this->product_image = $productImage;
        $this->tag = $tag;
    }

    public function index()
    {
        $dataPages = [
            'titlePageHeader' => 'Quản Lý Sản Phẩm',
            'page' => 'Sản Phẩm',
            'page_curd' => 'Thêm Sản Phẩm Mới'
        ];
        $data_list = $this->product->latest()->paginate(10);


        return view('admin.product.list')->with(compact('dataPages', 'data_list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dataPages = [
            'titlePageHeader' => 'Thêm Sản Phẩm',
            'page' => 'Thêm Sản Phẩm',

        ];
        $htmlOption = $this->getCategory($parent_id = '');

        return view('admin.product.add')->with(compact('dataPages', 'htmlOption'));
    }

    function getCategory($product_id)
    {
        $data = $this->category->all();
        $recusive = new Recusive($data);
//        return $recusive->categoryRecusive($parent_id);
        return $recusive->categoryRecusiveCheckBox($product_id);


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
//ProductAddRequest
    public function store(Request $request)
    {
//        DB::beginTransaction();
//        try {

        $dataInsert = [
            'name' => $request->name,
            'price' => $request->price,
            'content' => $request->contents,
            'discount' => $request->discount,
            'user_id' => Auth::id(),
            'desc' => $request->desc,
            'status' => $request->status
        ];
        if (!empty($request->colors)) {
            $dataInsert['color'] = json_encode($request->colors);
        }
        if (!empty($request->sizes)) {
            $dataInsert['size'] = json_encode($request->sizes);
        }

        /*
         * Upload One image
         */
        $datalUploadFeatureImage = $this->storageTraitUpload($request, 'img', 'products_image');
        if (!empty($datalUploadFeatureImage)) {
            $dataInsert['feature_image_name'] = $datalUploadFeatureImage['file_name'];
            $dataInsert['feature_image_path'] = $datalUploadFeatureImage['file_path'];
        };


        $product = $this->product->create($dataInsert);


        /*
         * Upload multi image
         *  */

        if ($request->hasFile('album_img')) {
            foreach ($request->album_img as $fileItem) {
                $dataProductImageDetail = $this->storageTraitUploadMutiple($fileItem, 'products_image');
                if (!empty($dataProductImageDetail)) {
                    $product->images()->create([
                        'image_name' => $dataProductImageDetail['file_name'],
                        'image_path' => $dataProductImageDetail['file_path'],
                    ]);
                }
            }
        }

        /*
         * Handel many tags
         *  */
        if (!empty($request->tags)) {

            foreach ($request->tags as $tagItem) {
                echo ' Tag=' . $tagItem;
                $tagInstance = $this->tag->firstOrCreate([
                    'name' => $tagItem
                ]);
                $tagId[] = $tagInstance->id;
            }

            $product->tags()->attach($tagId);
        }
        if (!empty($request->category_id)) {
            $product->category_prod()->attach($request->category_id);
        }
//            DB::commit();
        // all good
        return redirect()->route('product.list')->with('success', 'Thêm thành công');
//        } catch (\Exception $e) {
//            DB::rollback();
//            // something went wrong
//        }


    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataPages = [
            'titlePageHeader' => 'Sửa Sản Phẩm',
            'page' => 'Sửa Sản Phẩm',
        ];

        $productOld = $this->product->find($id);
        $htmlOption = $this->getCategory($productOld->select_cate);
        $cateOfProduct = $productOld->select_cate;
        $listCate = $this->category->where('parent_id', 0)->get();


        return view('admin.product.edit')->with(compact('htmlOption', 'dataPages', 'productOld', 'listCate', 'cateOfProduct'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductEditRequest $request, $id)
    {
        DB::beginTransaction();

        try {
            $dataUpdate = [
                'name' => $request->name,
                'price' => $request->price,
                'content' => $request->contents,
                'discount' => $request->discount,
                'user_id' => 1,
                'desc' => $request->desc,
                'status' => $request->status
            ];
            if (!empty($request->colors)) {
                $dataUpdate['color'] = json_encode($request->colors);
            }
            if (!empty($request->sizes)) {
                $dataUpdate['size'] = json_encode($request->sizes);
            }

            /*
             * Upload One image
             *  */
            $datalUploadFeatureImage = $this->storageTraitUpload($request, 'img', 'products_image');
            if (!empty($datalUploadFeatureImage)) {
                $dataUpdate['feature_image_name'] = $datalUploadFeatureImage['file_name'];
                $dataUpdate['feature_image_path'] = $datalUploadFeatureImage['file_path'];
            };

            $this->product->find($id)->Update($dataUpdate);
// update nó sẽ trả về giá trị true false
            $product = $this->product->find($id);


            /*
 * Upload multi image
 *  */
            if ($request->hasFile('Album_img')) {
                $this->product_image->where('product_id', $id)->delete();
                foreach ($request->Album_img as $fileItem) {
                    $dataProductImageDetail = $this->storageTraitUploadMutiple($fileItem, 'products_image');
                    if (!empty($dataProductImageDetail)) {
                        $product->images()->create([
                            'image_name' => $dataProductImageDetail['file_name'],
                            'image_path' => $dataProductImageDetail['file_path'],
                        ]);
                    }
                }
            }

            /*
 * Handel many tags
 *  */
            if (!empty($request->tags)) {

                foreach ($request->tags as $tagItem) {

                    $tagInstance = $this->tag->firstOrCreate([
                        'name' => $tagItem
                    ]);
                    $tagId[] = $tagInstance->id;
                }

                $product->tags()->sync($tagId);
            }
            if (!empty($request->category_id)) {
                $product->category_prod()->sync($request->category_id);
            }

            DB::commit();
            // all good

            return redirect()->route('product.list')->with('success', 'Cập nhập thành công');
        } catch (\Exception $e) {
            DB::rollback();
            // something went wrong
            return redirect()->route('product.list')->with('error', 'Cập nhập không thành công');
        }


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return $this->deleteModelTrait($id, $this->product);
    }
}
