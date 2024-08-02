<div id="controlPanelApplication">

<script type="text/x-handlebars" data-template-name="desktop">
    <div class="containerAll">
        <div class="statusbar">
            <!-- TODO: i18n -->
            {literal}
                {{#if connected}}
                    <span style="color: green; font-weight: bold;">Connected</span>
                    <div class="utilities-container">

                        <div class="Extensions-Calls-Count">
                          <div class="Registered">
                            <span>Extensions Online</span><br>
                            <span class="Count-Registered" style="font-size: 35px; color: #06ea06c4; padding: 10px; text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;"></span>
                          </div>
                          <div class="NotRegistered">
                            <span>Extensions Offline</span><br>
                            <span class="Count-NotRegistered" style="font-size: 35px; color: red; padding: 10px; text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;"></span>
                          </div>
                          <div class="Calls-In-Progress">
                            <span>Calls in Progress</span><br>
                            <span class="Count-Calls-In-Progress" style="font-size: 35px; color: orange; padding: 10px; text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;"></span>
                          </div>
                        </div>
                    </div>

                {{else}}
                    <span style="color: red; font-weight: bold;">Connecting...</span>
                {{/if}}
            {/literal}
        </div>

        <div class="left-container" id="left-container">
        {literal}{{#view App.BaseSortableView }}{/literal}
        {* La lista de las extensiones no asignadas a alguna de las áreas *}
        {literal}
            {{#view App.PBXPanelView controllerBinding="extensions" }}
              <dt class="operator-title-container" id="operator-title-container">
                <i class="fa fa-phone" style="font-size:20px; padding-right:5px;"></i> {/literal}{$AREA_DESCR_EXTENSION}{literal}
              </dt>
                 <div class="Extensions-List" id="Extensions-List">
                    {{#if finishedloading}}
                        {{#view App.SortablePanelView }}
                            {{#each }}
                                  {{view App.ExtensionView}}
                            {{else}}
                                <br/>
                            {{/each}}
                        {{/view}}
                    {{else}}
                <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                {{/if}}
                </div>
            {{/view}}
        {/literal}
        {literal}{{/view}}{/literal}{* App.BaseSortableView *}

                {literal}{{#view App.FAQView }}{/literal}
        {literal}{{#view App.BaseSortableView }}{/literal}

        {* La lista de las extensiones asignadas al área 1 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area1" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 2 *}
                {literal}
                {{#view App.PBXPanelView controllerBinding="area2" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 3 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area3" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 4 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area4" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 5 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area5" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 6 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area6" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 7 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area7" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 8 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area8" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 9 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area9" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}</br>

        {* La lista de las extensiones asignadas al área 10 *}
            {literal}
                {{#view App.PBXPanelView controllerBinding="area10" }}
                    {{view App.EditableTitleView }}
                    <dd>
                    <div class="Extensions-List" id="Extensions-List">
                        {{#if finishedloading}}
                            {{#view App.SortablePanelView }}
                                {{#each }}
                                    {{view App.ExtensionView}}
                                {{else}}
                                    <br/>
                                {{/each}}
                                {{/view}}
                            {{else}}
                            <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                        {{/if}}
                    </div>
                    </dd>
                {{/view}}
            {/literal}

        {literal}{{/view}}{/literal}{* App.BaseSortableView *}
        {literal}{{/view}}{/literal}{* App.FAQView *}
        </div>
        <div class="right-container">
            <div class="PBXTabs">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#PBXTab1" data-toggle="tab">{/literal}{$PBXTAB1}{literal}</a></li>
                    <li><a href="#PBXTab2" data-toggle="tab">{/literal}{$PBXTAB2}{literal}</a></li>
                    <li><a href="#PBXTab3" data-toggle="tab">{/literal}{$PBXTAB3}{literal}</a></li>
                    <li><a href="#PBXTab4" data-toggle="tab">{/literal}{$PBXTAB4}{literal}</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="PBXTab1">
                        <div id="container" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
                    </div>
                    <div class="tab-pane fade" id="PBXTab2">
                        <div id="container2" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
                    </div>
                    <div class="tab-pane fade" id="PBXTab3">
                        <div id="container3" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
                    </div>
                    <div class="tab-pane fade" id="PBXTab4">
                        <div id="container4" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
                    </div>
                </div>
            </div>
            <div id="debug"></div>
        </div>
    </div>
</script>

</div>
