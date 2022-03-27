import React from "react";
import StoreUnitBox from "./StoreUnitBox";

export default function StoreUnit({store}){
    return(
        <div>
            {store.store_units.map(storeUnit => 
                <StoreUnitBox storeUnit = {storeUnit}/>)}
        </div>
    )
}