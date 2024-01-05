<?php
session_start();
$action = $_GET["action"];
    require_once("./dsSqlSimple.php");
    $sql = new sqlDB_cls("gs_bm_table_2");
    $sql->set_prop('table','bookmark');

    $sql->set_prop('RETURN_ALL',TRUE);
    $sql->set_prop('ORDER_BY','timestamp_update DESC');
    if($action=="filter_fav"){
        $results = $sql->get("*",['favorite'=>TRUE]);
    }elseif($action=="filter_public"){
        $results = $sql->get("*",['public'=>TRUE]); 
    }else{
        $results = $sql->get(); 
    }
    $sql->set_prop('table','user');

    function user($id){
        $sql = new sqlDB_cls("gs_bm_table_2");
        $sql->set_prop('table','user');
        $results = $sql->get("*",["id"=>$id]);    
   
        return $results;
    }

    $view = '<div class="">';
    foreach ($results as $result) {
        $view .= '<div class="relative flex justify-between px-6 border border-t-2">';

        $user_nickname = user($result["user"])['nickname'];
        // var_dump($result);
        $view .= '<div class="flex w-1/3 min-h-40 py-3 items-center">';
        $view .= '<img  class="flex max-h-full w-full " src="'.$result["img_url"].'" alt="no image" >';
        $view .= '</div>';
        $view .= '<div class="flex flex-col w-2/3 pl-2 pt-4" >';
        $view .= '<a class="" href="">User: '.$user_nickname.'</a>';

        $view .= '<p class="">Name: '.$result["name"].'</p>';
        // $view .= '<a class="" href="'.$result["ref_url"].'">URL: '.$result["ref_url"].'</a>';
        $view .= '<p class="">Comment: '.$result["comment"].'</p>';
        $view .= '<p class="">Date: '.$result["timestamp_update"].'</p>';
        $view .= '<div class="flex justify-between">';
        if($result["ref_url"]==""){
            $view .= '<a class="block w-1/5 h-8 bg-slate-200 px-2 rounded-lg cursor-pointer hover:shadow-md border border-slate-500 text-base text-center text-slate-400 font-bold pt-1 pointer-events-none" href="'.$result["ref_url"].'"> URL</a>';
        }else{
            $view .= '<a class="block w-1/5 h-8 bg-orange-200 px-2 rounded-lg cursor-pointer hover:shadow-md border border-orange-500 text-base text-center text-black font-bold pt-1 " href="'.$result["ref_url"].'" target="_blank" rel="noopener noreferrer"> URL</a>';

        }
        $view .='<form class="w-1/5" action="./bm_edit.php?action=edit&item_id='.$result['id'].'" method="post">';
        $view .='<input class="block w-full h-8 bg-yellow-100 text-2xl text-center px-2 rounded-lg cursor-pointer hover:shadow-md border border-yellow-600 " type="submit" value="&#128395">';
        $view .='</form>';
        $view .='<form class="w-1/6" action="./bm_delete.php?item_id='.$result['id'].'" method="post" >';
        $view .='<input class="flex w-full h-8 bg-gray-300 text-2xl text-center px-2 rounded-lg cursor-pointer hover:shadow-md bg-[url('."'./img/delete_forever.svg'".')] bg-no-repeat bg-center border border-gray-500" type="submit" value="" >';
        $view .='</form>';

        $view .= '</div>';
        $view .= '</div>';
        if($result['favorite']){
            $view .= '<form method = "post" action="./bm_edit.php?action=fav_remove&item_id='.$result['id'].'"  class="block absolute top-4 right-5">
            <label class="cursor-pointer" for ="item_'.$result['id'].'">
                <img class="top-2 right-2" src="./img/Vector.svg" alt="like-true">
                <input id="item_'.$result['id'].'" type="submit" class ="hidden absolute" value =" " >
            </label>
            </form>';
    
        }else{
            $view .= '<form method = "post" action="./bm_edit.php?action=fav_add&item_id='.$result['id'].'"  class="block absolute top-4 right-5 ">
            <label class="cursor-pointer" for ="item_'.$result['id'].'">
                <img class=" top-2 right-2" src="./img/favorite_border.svg" alt="like-false">
                <input id="item_'.$result['id'].'" type="submit" class ="hidden absolute" value =" " >
            </label>
            </form>';
    
        }

        $view .= '</div>';
    }
    $view .= '</div>';

echo $view;
?>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>DjangoでTailwindCSSを使用する方法</title>
  </head>

<div>
    

</div>
<script>

</script>