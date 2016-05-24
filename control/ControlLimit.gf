abstract ControlLimit = {
  flags
    startcat = Command ;
  cat
    Action ;
    Object ;
    Tool ;
    ToolFor Tool Object ;
    Command;
    ActionFor Action Object ;
  fun
    -- Cause an action
    apply : ( a : Action ) -> ( t : Tool ) -> ( o : Object ) -> ToolFor t o -> ActionFor a o -> Command ;
    do : ( a : Action ) -> ( o : Object ) -> ActionFor a o -> Command ;
    -- Possible commands
    close : Action ;
    open_ : Action ;
    switchOn : Action ;
    turnOff : Action ;
    -- Possible objects
    can : Object ;
    door : Object ;
    light : Object ;
    -- Possible tools
    canOpener : Tool ;
    hands : Tool ;
    lightSwitch : Tool ;
    -- Compatibility between tools and objects
    tool1 : ToolFor canOpener can ;
    tool2 : ToolFor lightSwitch light ;
    tool3 : ToolFor hands door ;
    tool4 : ToolFor hands can ;
    action1 : ActionFor open_ can ;
    action2 : ActionFor open_ door ;
    action3 : ActionFor close door ;
    action4 : ActionFor switchOn light ;
    action5 : ActionFor turnOff light ;
}