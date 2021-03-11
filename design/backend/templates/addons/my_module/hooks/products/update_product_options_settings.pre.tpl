
{*{include file="common/subheader.tpl" title=__("boat_options") target="#boat_options"}*}
{*<div id="boat_options" class="collapse in">*}
{*    <div class="control-group {$no_hide_input_if_shared_product}">*}
{*        <label for="product_quantity_double_cabins" class="control-label ">{__("quantity_double_cabins")}:</label>*}
{*        <div class="controls">*}
{*            <input class="input-large" form="form" type="text" name="product_data[double_cabins]" id="product_quantity_double_cabins" size="55" value="{$product_data.double_cabins}" />*}
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[double_cabins]"}*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group {$no_hide_input_if_shared_product}">*}
{*        <label for="product_quantity_single_cabins" class="control-label ">{__("quantity_single_cabins")}:</label>*}
{*        <div class="controls">*}
{*            <input class="input-large" form="form" type="text" name="product_data[single_cabins]" id="product_quantity_single_cabins" size="55" value="{$product_data.single_cabins}" />*}
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[single_cabins]"}*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group {$no_hide_input_if_shared_product}">*}
{*        <label for="product_quantity_double_sleep_places" class="control-label ">{__("quantity_double_sleep_places")}:</label>*}
{*        <div class="controls">*}
{*            <input class="input-large" form="form" type="text" name="product_data[double_sleep_place]" id="product_quantity_double_sleep_places" size="55" value="{$product_data.double_sleep_place}" />*}
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[double_sleep_place]"}*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group {$no_hide_input_if_shared_product}">*}
{*        <label for="product_quantity_single_sleep_places" class="control-label">{__("quantity_single_sleep_places")}:</label>*}
{*        <div class="controls">*}
{*            <input class="input-large" form="form" type="text" name="product_data[single_sleep_place]" id="product_quantity_single_sleep_places" size="55" value="{$product_data.single_sleep_place}" />*}
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[single_sleep_place]"}*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group {$no_hide_input_if_shared_product}">*}
{*        <label for="product_quantity_baths" class="control-label ">{__("quantity_baths")}:</label>*}
{*        <div class="controls">*}
{*            <input class="input-large" form="form" type="text" name="product_data[baths]" id="product_quantity_baths" size="55" value="{$product_data.baths}" />*}
{*            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[baths]"}*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="availability_shower">{__("availability_shower")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[shower]" value="N" />*}
{*            <input type="checkbox" name="product_data[shower]" id="availability_shower" value="Y" {if $product_data.shower == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="availability_kitchen">{__("availability_kitchen")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[kitchen]" value="N" />*}
{*            <input type="checkbox" name="product_data[kitchen]" id="availability_kitchen" value="Y" {if $product_data.kitchen == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="wi_fi">Wi-Fi:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[wi_fi]" value="N" />*}
{*            <input type="checkbox" name="product_data[wi_fi]" id="wi_fi" value="Y" {if $product_data.wi_fi == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}


{*    <div class="control-group">*}
{*        <label class="control-label" for="bath_accessories">{__("bath_accessories")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[bath_accessories]" value="N" />*}
{*            <input type="checkbox" name="product_data[bath_accessories]" id="bath_accessories" value="Y" {if $product_data.bath_accessories == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}


{*    <div class="control-group">*}
{*        <label class="control-label" for="dishes">{__("dishes")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[dishes]" value="N" />*}
{*            <input type="checkbox" name="product_data[dishes]" id="dishes" value="Y" {if $product_data.dishes == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}


{*    <div class="control-group">*}
{*        <label class="control-label" for="bath_accessories">{__("cinema")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[cinema]" value="N" />*}
{*            <input type="checkbox" name="product_data[cinema]" id="cinema" value="Y" {if $product_data.cinema == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}
{*    <div class="control-group">*}
{*        <label class="control-label" for="pool">{__("pool")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[pool]" value="N" />*}
{*            <input type="checkbox" name="product_data[pool]" id="pool" value="Y" {if $product_data.pool == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="bar">{__("bar")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[bar]" value="N" />*}
{*            <input type="checkbox" name="product_data[bar]" id="bar" value="Y" {if $product_data.bar == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}
{*    <div class="control-group">*}
{*        <label class="control-label" for="bath_accessories">{__("pets")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[pets]" value="N" />*}
{*            <input type="checkbox" name="product_data[pets]" id="pets" value="Y" {if $product_data.pets == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}
{*    <div class="control-group">*}
{*        <label class="control-label" for="washer">{__("washer")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[washer]" value="N" />*}
{*            <input type="checkbox" name="product_data[washer]" id="washer" value="Y" {if $product_data.washer == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}
{*    <div class="control-group">*}
{*        <label class="control-label" for="checked">{__("checked")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[checked]" value="N" />*}
{*            <input type="checkbox" name="product_data[checked]" id="checked" value="Y" {if $product_data.checked == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="plus">{__("plus")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[plus]" value="N" />*}
{*            <input type="checkbox" name="product_data[plus]" id="plus" value="Y" {if $product_data.plus == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}

{*    <div class="control-group">*}
{*        <label class="control-label" for="lux">{__("lux")}:</label>*}
{*        <div class="controls">*}
{*            <input type="hidden" name="product_data[lux]" value="N" />*}
{*            <input type="checkbox" name="product_data[lux]" id="lux" value="Y" {if $product_data.lux == "Y" }checked="checked"{/if}>*}
{*        </div>*}
{*    </div>*}
{*</div>*}

