<?php
session_start();
require_once("./funcs_v1.php");
require_once("./dsSqlSimple.php");
var_dump($_SESSION["user_id"]);
$action = $_GET['action'];
$id = $_GET['item_id'];
if($action=="fav_add"){
    $sql = new sqlDB_cls("gs_bm_table_2");
    $sql->set_prop('table','bookmark');   
    $chgobj = [
        "favorite"=>TRUE,
        "timestamp_update"=>""
    ];
    $results = $sql->upd("id",$id,$chgobj);  
    redirect("./bm_add.php?user=".$member['nickname']);
}
elseif($action=="fav_remove"){
    $sql = new sqlDB_cls("gs_bm_table_2");
    $sql->set_prop('table','bookmark');   

    $chgobj = [
        "favorite"=>FALSE,
        "timestamp_update"=>""
    ];
    $results = $sql->upd("id",$id,$chgobj);  
    redirect("./bm_add.php?user=".$member['nickname']);
}elseif($action=="edit"){
    $sql = new sqlDB_cls("gs_bm_table_2");
    $sql->set_prop('table','bookmark');   
    $result = $sql->get("*",["id"=>$id])  ;  
}elseif($action=="add"){
    $user_id = $_SESSION["user_id"];
    $result = [
        'name'=>'','img_url'=>"",'comment'=>'',
        'user'=>$user_id,'timestamp'=>'sysdate()','timestamp_update'=>'sysdate()',
        'ref_url'=>'','public'=>0
    ]  ;  

}

?>


<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Document</title>
</head>
<body>
    <h1 class="transition-all flex absolute bg-blue-500 w-20 rounded-lg top-4 left-5 text-xl font-bold text-white text-center pr-1 hover:shadow-md" ><a class="w-full " href="./bm_add.php?" class="">◂ Back</a></h>
    <h1 class="w-full text-xl font-bold text-center pt-4">Edit item</h1>
    <div class="flex justify-center w-full">
        <form action="./bm_edit_exec.php?action=<?=$action?>&item_id=<?=$id?>" method ="post"  class="flex flex-col w-10/12" enctype="multipart/form-data">
            <div class="w-full flex flex-col justify-center py-5">
                <img src="<?=$result["img_url"]?>" alt="no-image" class="w-8/12 min-h-32 bg-green-50 self-center">
                <p class="font-bold">■ Upload Image</p>
                <input name="img_url" class="transition-all bg-gray-100 rounded-sm outline-none outline-gray-200 hover:outline-2 hover:outline-blue-300" type="file" class="w-full" value="<?=$result["img_url"]?>" accept="image/*">
                <input name="img_url_org" class="hidden" type="text" value="<?=$result["img_url"]?>" >

            </div>
            <p class="font-bold">■ Name</p>
            <input name="name" class="transition-all bg-gray-100 rounded-sm outline-none outline-gray-200 hover:outline-2 hover:outline-blue-300" type="text" class="w-full" value="<?=$result["name"]?>">
            <div class="flex items-center gap-8  py-5">
                <p class="font-bold">■ Public</p>
                    <input name="public" id="purple-checkbox" type="checkbox" value="<?=$result["name"]?>" class="flex w-4 h-4 text-purple-600 bg-gray-100 border-gray-300 rounded accent-pink-300 focus:ring-purple-500 dark:focus:ring-purple-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            </div>
            <p class="font-bold">■ Comment</p>
            <textarea name="comment"  class="transition-all bg-gray-100 rounded-sm outline-none outline-gray-200 hover:outline-2 hover:outline-blue-300 text-sm pb-5"  rows=6 cols=500 ><?=$result["comment"]?></textarea>
            <p  class="font-bold pt-5">■ ref_URL</p>
            <input name="ref_url" class="transition-all bg-gray-100 rounded-sm outline-none outline-gray-200 hover:outline-2 hover:outline-blue-300 pb-5" type="text" class="w-full" value="<?=$result["ref_url"]?>">
            <span class="w-1 h-10"></span>
            <button class="transition-all bg-blue-500 hover:bg-blue-700 text-white text-lg font-bold py-2 px-4 rounded-xl pt-15" type="submit">
                Submit
            </button>
        </form>
        
    </div>
    <script src="./js/img.js"></script>
</body>
</html>
