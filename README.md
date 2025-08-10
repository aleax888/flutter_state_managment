# Flutter State Managment

This project contains examples of how to implement state management in Flutter using different ways.

The examples are about how to implement Flutter’s counter app example, where there are two pages that read the state to manipulate the counter value and display it.


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
│          └── 📁 sample/
│                  ├── 📁 manapment/ -> Logic layer.
│                  └── 📁 pages/     -> Presentation layer.
├──📁 lib/shared/        
│       ├── 📁 styles/  -> Shared style values like colors, sizes, etc.
│       └── 📁 widgets/ -> Shared widgets used across every sample.
└──🚪 lib/home/         -> Main app entry point and navigation logic.
```

---

```text
          _____                    _____            _____                _____                _____                    _____                    _____          
         /\    \                  /\    \          /\    \              /\    \              /\    \                  /\    \                  /\    \         
        /::\    \                /::\____\        /::\____\            /::\    \            /::\    \                /::\    \                /::\    \        
       /::::\    \              /:::/    /       /:::/    /            \:::\    \           \:::\    \              /::::\    \              /::::\    \       
      /::::::\    \            /:::/    /       /:::/    /              \:::\    \           \:::\    \            /::::::\    \            /::::::\    \      
     /:::/\:::\    \          /:::/    /       /:::/    /                \:::\    \           \:::\    \          /:::/\:::\    \          /:::/\:::\    \     
    /:::/__\:::\    \        /:::/    /       /:::/    /                  \:::\    \           \:::\    \        /:::/__\:::\    \        /:::/__\:::\    \    
   /::::\   \:::\    \      /:::/    /       /:::/    /                   /::::\    \          /::::\    \      /::::\   \:::\    \      /::::\   \:::\    \   
  /::::::\   \:::\    \    /:::/    /       /:::/    /      _____        /::::::\    \        /::::::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \  
 /:::/\:::\   \:::\    \  /:::/    /       /:::/____/      /\    \      /:::/\:::\    \      /:::/\:::\    \  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\____\ 
/:::/  \:::\   \:::\____\/:::/____/       |:::|    /      /::\____\    /:::/  \:::\____\    /:::/  \:::\____\/:::/__\:::\   \:::\____\/:::/  \:::\   \:::|    |
\::/    \:::\   \::/    /\:::\    \       |:::|____\     /:::/    /   /:::/    \::/    /   /:::/    \::/    /\:::\   \:::\   \::/    /\::/   |::::\  /:::|____|
 \/____/ \:::\   \/____/  \:::\    \       \:::\    \   /:::/    /   /:::/    / \/____/   /:::/    / \/____/  \:::\   \:::\   \/____/  \/____|:::::\/:::/    / 
          \:::\    \       \:::\    \       \:::\    \ /:::/    /   /:::/    /           /:::/    /            \:::\   \:::\    \            |:::::::::/    /  
           \:::\____\       \:::\    \       \:::\    /:::/    /   /:::/    /           /:::/    /              \:::\   \:::\____\           |::|\::::/    /   
            \::/    /        \:::\    \       \:::\__/:::/    /    \::/    /            \::/    /                \:::\   \::/    /           |::| \::/____/    
             \/____/          \:::\    \       \::::::::/    /      \/____/              \/____/                  \:::\   \/____/            |::|  ~|          
                               \:::\    \       \::::::/    /                                                      \:::\    \                |::|   |          
                                \:::\____\       \::::/    /                                                        \:::\____\               \::|   |          
                                 \::/    /        \::/____/                                                          \::/    /                \:|   |          
                                  \/____/          ~~                                                                 \/____/                  \|___|          
                                                                                                                                                                    
```

