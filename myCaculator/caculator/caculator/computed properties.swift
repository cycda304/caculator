 var displayValue: Double{
        get{
            if(display != nil ){
                return Double(display.text!)!
            }else {
                return 0
            }
        }
        set{
            if(round(newValue) == newValue){
                display.text = String(Int(newValue))
            }
            else{
                display.text = String(newValue)
            }
        }
    }
