# Flutter State Managment

This project contains examples of how to implement state management in Flutter using different ways.
- **BLoC**: A predictable state management library based on streams and events.
- **Cubit**: A lightweight version of BLoC with less boilerplate.
- **GetX**: A micro-framework that simplifies state, navigation, and dependency injection.
- **Provider**: A recommended, lightweight wrapper around InheritedWidgets.
- **Riverpod**: A more robust and flexible alternative to Provider.
- **Flutter (Native)**: Using only `setState` and basic Flutter mechanisms.


---

### Folders Structure
```text
📁 lib/sample/     -> Code examples for each state management approach.
🪲 lib/components/ -> Shared widgets used across multiple samples.
🚪 lib/home/       -> Main app entry point and navigation logic.
```

---

```text
    ffffffffffffffff  lllllll                          tttt               tttt                                                  
   f::::::::::::::::f l:::::l                       ttt:::t            ttt:::t                                                  
  f::::::::::::::::::fl:::::l                       t:::::t            t:::::t                                                  
  f::::::fffffff:::::fl:::::l                       t:::::t            t:::::t                                                  
  f:::::f       ffffff l::::l uuuuuu    uuuuuuttttttt:::::tttttttttttttt:::::ttttttt        eeeeeeeeeeee    rrrrr   rrrrrrrrr   
  f:::::f              l::::l u::::u    u::::ut:::::::::::::::::tt:::::::::::::::::t      ee::::::::::::ee  r::::rrr:::::::::r  
 f:::::::ffffff        l::::l u::::u    u::::ut:::::::::::::::::tt:::::::::::::::::t     e::::::eeeee:::::eer:::::::::::::::::r 
 f::::::::::::f        l::::l u::::u    u::::utttttt:::::::tttttttttttt:::::::tttttt    e::::::e     e:::::err::::::rrrrr::::::r
 f::::::::::::f        l::::l u::::u    u::::u      t:::::t            t:::::t          e:::::::eeeee::::::e r:::::r     r:::::r
 f:::::::ffffff        l::::l u::::u    u::::u      t:::::t            t:::::t          e:::::::::::::::::e  r:::::r     rrrrrrr
  f:::::f              l::::l u::::u    u::::u      t:::::t            t:::::t          e::::::eeeeeeeeeee   r:::::r            
  f:::::f              l::::l u:::::uuuu:::::u      t:::::t    tttttt  t:::::t    tttttte:::::::e            r:::::r            
 f:::::::f            l::::::lu:::::::::::::::uu    t::::::tttt:::::t  t::::::tttt:::::te::::::::e           r:::::r            
 f:::::::f            l::::::l u:::::::::::::::u    tt::::::::::::::t  tt::::::::::::::t e::::::::eeeeeeee   r:::::r            
 f:::::::f            l::::::l  uu::::::::uu:::u      tt:::::::::::tt    tt:::::::::::tt  ee:::::::::::::e   r:::::r            
 fffffffff            llllllll    uuuuuuuu  uuuu        ttttttttttt        ttttttttttt      eeeeeeeeeeeeee   rrrrrrr            
```

