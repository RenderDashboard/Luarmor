    local _=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\100\107\97\112\105\45\112\117\98\108\105\99\46\108\117\97\114\109\111\114\46\110\101\116\47\108\105\98\114\97\114\121\46\108\117\97"))();
    _[("script_id")]="ba63e5108c182e73a0d0ab53587b6439";
    local b1='Lmao WTF?';
    local b2='You are suspicious because you may be using a bad Executor. [Executor: '..(identifyexecutor and identifyexecutor() or b1)..'] Right?';
    local p=game:GetService("\80\108\97\121\101\114\115").LocalPlayer;
    local s=_["check_key"](script_key or getgenv().script_key); 

    local function init_loading(s)
        if s then
            repeat task.wait(0.1) until game:IsLoaded();
        else
            p:Kick('Xecret Hub | Status: Down | '..os.date());
        end
    end;

    init_loading(true);

    pcall(function()
    getgenv().script_key=script_key; 
    getgenv().script_loader='https://xecrethub.com/loader.lua'; 
    local script_key=getgenv().script_key;
    if not script_key then p:Kick("\91\69\82\82\79\82\93\32\76\111\97\100\101\114\32\70\97\105\108\101\100\32\45\32\75\101\121\32\110\111\116\32\102\111\117\110\100"); return end;
    if not getgenv().script_key then for i=1,10 do 
        print(b2.."\n"..b2.."\n"..b2);
        warn(b2.."\n"..b2.."\n"..b2);
        p:Kick("\91\69\82\82\79\82\93\32\76\111\97\100\101\114\32\70\97\105\108\101\100\32\45\32\75\101\121\32\110\111\116\32\102\111\117\110\100".."\n"..b2.."\n"..b2.."\n"..b2);
    end; return end; end)

    local k={
    ["KEY_VALID"]=function() pcall(_["purge_cache"]); _["load_script"]() end,
    ["KEY_HWID_LOCKED"]=function() p:Kick("\91\87\65\82\78\73\78\71\93\32\72\87\73\68\32\76\111\99\107\101\100\32\45\32\82\101\115\101\116\32\121\111\117\114\32\72\87\73\68") end,
    ["KEY_EXPIRED"]=function() p:Kick("\91\69\82\82\79\82\93\32\75\101\121\32\69\120\112\105\114\101\100\32\45\32\83\117\98\115\99\114\105\112\116\105\111\110\32\101\110\100\101\100") end,
    ["KEY_BANNED"]=function() p:Kick("\91\69\82\82\79\82\93\32\75\101\121\32\66\108\97\99\107\108\105\115\116\101\100\32\45\32\65\99\99\101\115\115\32\114\101\118\111\107\101\100") end,
    ["KEY_INCORRECT"]=function() p:Kick("\91\69\82\82\79\82\93\32\73\110\118\97\108\105\100\32\75\101\121\32\45\32\89\111\117\114\32\67\111\111\107\101\100") end,
    };

    (k[(s and s.code)] or function() p:Kick("\91\69\82\82\79\82\93\32\76\111\97\100\101\114\32\69\114\114\111\114\32\45\32"..((s and s.message) or b1)) end)();
