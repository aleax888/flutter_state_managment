# Flutter State Managment

This project contains examples of how to implement state management in Flutter using different ways.
- **BLoC**
- **Cubit**
- **GetX Reactive State**
- **GetX Simple State**
- **GetX Mixin State**
- **Flutter (setState)**
- **Flutter (InheritedWidget)**
- **Provider**
- **Riverpod**


---

### Folders Structure
```text
├──📁 lib/samples/ -> Code examples for each state management approach.
│       └── 📁 sample/
│               ├── 📁 manapment/ -> Logic layer.
│               └── 📁 pages/     -> Presentation layer.
├──📁 lib/shared/        
│       ├── 📁 styles/  -> Shared style values like colors, sizes, etc.
│       └── 📁 widgets/ -> Shared widgets used across every sample.
└──🚪 lib/home/         -> Main app entry point and navigation logic.
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

