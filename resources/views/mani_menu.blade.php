

@foreach($items as $menu_item)
<div role="listitem">
    <a href="{{ $menu_item->url }}" class="v-list__tile v-list__tile--link">
        <div class="v-list__tile__title">{{$menu_item->title}}</div>
    </a>
</div>
@endforeach
