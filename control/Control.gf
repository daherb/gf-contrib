abstract Control = {
  flags
    startcat = Command ;
  cat
    Action ;
    Object ;
    Tool ;
    Command ;
  fun
    -- Cause an action
    apply : Action -> Tool -> Object -> Command ;
    do : Action -> Object -> Command ;
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
}