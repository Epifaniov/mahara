<div id="blocktype_externalfeed_feed" class="external-feed">
    {if $feedimage}<div class="feedlogoimage">{$feedimage|safe}</div>{/if}
    <div id="blocktype_externalfeed_title" >
        {if $description && $description != $entries[0]->description}
        <div id="blocktype_externalfeed_desc" class="feed-decription text-midtone text-small">
            <p>{$description|clean_html|safe}</p>
        </div>
        {/if}

        {if $full}
            <div class="list-group{if $description} list-group-top-border{/if}">
                {foreach from=$entries item=entry}
                <div class="list-group-item flush">
                    {if $entry->link}
                    <h4 class="title list-group-item-heading">
                        <a href="{$entry->link}">
                            {$entry->title}
                        </a>
                    </h4>
                    {else}
                    <h4 class="title list-group-item-heading">
                        {$entry->title}
                    </h4>
                    {/if}
                    <p class="postdetails metadata text-small">
                        {if $entry->pubdate}{str tag=publishedon section=blocktype.externalfeed arg1=$entry->pubdate}{/if}
                    </p>
                    <div class="text-small">{$entry->description|clean_html|safe}</div>
                 </div>
                {/foreach}
            </div>
        {else}
            <ol class="list-group{if $description} list-group-top-border{/if}">
            {foreach from=$entries item=entry}
                <li class="list-group-item flush">
                    <h4 class="list-group-item-heading">
                        <a href="{$entry->link}">{$entry->title}</a>
                    </h4>
                    <div class="postdetails metadata text-small">
                        {if $entry->pubdate}{str tag=publishedon section=blocktype.externalfeed arg1=$entry->pubdate}{/if}
                    </div>
                </li>
            {/foreach}
            </ol>
        {/if}

        <div id="blocktype_externalfeed_lastupdate" class="content-text text-right text-small text-midtone">
        {$lastupdated}
        </div>
    </div>
</div>
