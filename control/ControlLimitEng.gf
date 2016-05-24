concrete ControlLimitEng of ControlLimit = open Prelude, LexiconEng, (P=ParadigmsEng), SyntaxEng in {
  lincat
    Command = Imp ; 
    Action = V2;
    Object = NP ;
    Tool = NP ;
    ToolFor = {} ;
    ActionFor = {} ;
  lin
    -- Cause an action
    apply c t o compTool compCommand = mkImp ( mkVP ( mkVP c o ) ( mkAdv with_Prep t ) ) ;
    do c o compCommand = mkImp ( mkVP c o ) ;
    -- Possible commands
    close = close_V2 ;
    open_ = open_V2 ;
    switchOn = switch8on_V2 ;
    turnOff = P.dirV2 ( P.partV ( P.regV "turn") "off") ;
    -- Possible objects ;
    can = mkNP theSg_Det ( mkCN ( P.mkN "can" ) ) ;
    door = mkNP theSg_Det ( mkCN door_N ) ;
    light = mkNP theSg_Det ( mkCN ( P.mkN "light") ) ;
    -- Possible tools
    canOpener = mkNP theSg_Det ( mkCN ( P.mkN "can opener" ) ) ;
    hands = mkNP ( mkDet ( mkQuant youSg_Pron ) pluralNum ) (mkCN hand_N ) ;
    lightSwitch = mkNP theSg_Det ( mkCN ( P.mkN "light switch") ) ;
}