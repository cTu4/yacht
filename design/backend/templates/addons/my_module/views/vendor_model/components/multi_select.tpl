{*{$data|fn_print_r}*}
{*{$vendor|fn_print_r}*}
<select name="vendor[{$key}][models][]" multiple size="3">
    {foreach from=$data item="item"}
        <option {if $vendor.models[$item.variant_id]}selected{/if} value="{$item.variant_id}">
                {$item.variant}
        </option>
    {/foreach}
</select>