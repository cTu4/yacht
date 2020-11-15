<div class="control-group {$no_hide_input_if_shared_product}">
    <label for="product_quantity_double_cabins" class="control-label ">{__("quantity_double_cabins")}:</label>
    <div class="controls">
        <input class="input-large" form="form" type="text" name="product_data[double_cabins]" id="product_quantity_double_cabins" size="55" value="{$product_data.double_cabins}" />
        {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[double_cabins]"}
    </div>
</div>

<div class="control-group {$no_hide_input_if_shared_product}">
    <label for="product_quantity_single_cabins" class="control-label ">{__("quantity_single_cabins")}:</label>
    <div class="controls">
        <input class="input-large" form="form" type="text" name="product_data[single_cabins]" id="product_quantity_single_cabins" size="55" value="{$product_data.single_cabins}" />
        {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[single_cabins]"}
    </div>
</div>

<div class="control-group {$no_hide_input_if_shared_product}">
    <label for="product_quantity_double_sleep_places" class="control-label ">{__("quantity_double_sleep_places")}:</label>
    <div class="controls">
        <input class="input-large" form="form" type="text" name="product_data[double_sleep_place]" id="product_quantity_double_sleep_places" size="55" value="{$product_data.double_sleep_place}" />
        {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[double_sleep_place]"}
    </div>
</div>

<div class="control-group {$no_hide_input_if_shared_product}">
    <label for="product_quantity_single_sleep_places" class="control-label">{__("quantity_single_sleep_places")}:</label>
    <div class="controls">
        <input class="input-large" form="form" type="text" name="product_data[single_sleep_place]" id="product_quantity_single_sleep_places" size="55" value="{$product_data.single_sleep_place}" />
        {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id="product" name="update_all_vendors[single_sleep_place]"}
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="availability_shower">{__("availability_shower")}:</label>
    <div class="controls">
        <input type="checkbox" name="product_data[shower]" id="availability_shower" value="Y" {if $product_data.shower == "Y" }checked="checked"{/if}>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="availability_kitchen">{__("availability_kitchen")}:</label>
    <div class="controls">
        <input type="checkbox" name="product_data[kitchen]" id="availability_kitchen" value="Y" {if $product_data.kitchen == "Y" }checked="checked"{/if}>
    </div>
</div>