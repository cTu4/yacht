<div class="images">
    <div class="item"><img src="/images/{$product.main_pair.detailed.relative_path}" alt=""></div>
    {foreach from=$product.image_pairs item=image name=foo}
        <div class="item-{$smarty.foreach.foo.iteration}"><img src="/images/{$image.detailed.relative_path}" alt=""></div>
    {/foreach}
    
</div>