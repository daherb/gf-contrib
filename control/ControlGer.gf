concrete ControlGer of Control = open Prelude, LexiconGer, (P=ParadigmsGer), SyntaxGer in {
  flags
    coding = utf8 ;
  lincat
    Command = Imp ; 
    Action = V2;
    Object = NP ;
    Tool = NP ;
  lin
    -- Cause an action
    apply c t o = mkImp ( mkVP ( mkVP c o ) ( mkAdv with_Prep t ) ) ;
    do c o = mkImp ( mkVP c o ) ;
    -- Possible commands
    close = close_V2 ;
    open_ = open_V2 ;
    switchOn = switch8on_V2 ;
    turnOff =  switch8off_V2 ;
    -- Possible objects ;
    can = mkNP theSg_Det ( mkCN ( P.mkN "Dose" ) ) ;
    door = mkNP theSg_Det ( mkCN door_N ) ;
    light = mkNP theSg_Det ( mkCN ( P.mkN "Licht" P.neuter ) ) ;
    -- Possible tools
    canOpener = mkNP theSg_Det ( mkCN ( P.mkN "Dosenöffner" ) ) ;
    hands = mkNP ( mkDet ( mkQuant youSg_Pron ) pluralNum ) (mkCN hand_N ) ;
    lightSwitch = mkNP theSg_Det ( mkCN ( P.mkN "Lichtschalter") ) ;
}