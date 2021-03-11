<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($mode == 'delete') {
       $id_reservation = $_REQUEST['id_reservation'];
       $res = db_query("delete from ?:product_reservations where reservation_id=?s",$id_reservation);
       fn_print_r($res);
    }

    return;
}

if ($mode == 'delete') {
    fn_print_r("aaaaaaaaaasfsd");
}