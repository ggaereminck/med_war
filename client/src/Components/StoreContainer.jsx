import React from "react";
import StoreBuilding from "./StoreBuilding";
import StoreUnit from "./StoreUnit"
import { useState, useEffect } from "react";

export default function StoreContainer(){
    const[storeBuildingData, setStoreBuildingData] = useState([])
    const[storeUnitData, setStoreUnitData] = useState([])

    useEffect(() => {
        fetch('/stores/3')
        .then(res => res.json())
        .then(data => setStoreBuildingData([data]))
    }, [])

    useEffect(() => {
        fetch('/stores/4')
        .then(res => res.json())
        .then(data => setStoreUnitData([data]))
    }, [])

    return(
        <div>
            <h2>Store:</h2>
            {storeBuildingData.map(store => 
                <StoreBuilding store={store}/>)}
            {storeUnitData.map(store => 
                <StoreUnit store={store}/>)}
        </div>
    )
}