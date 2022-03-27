import React from "react";
import StoreBuilding from "./StoreBuilding";
import { useState, useEffect } from "react";

export default function StoreContainer(){
    const[storeBuildingData, setStoreBuildingData] = useState([])

    useEffect(() => {
        fetch('/stores/3')
        .then(res => res.json())
        .then(data => setStoreBuildingData([data]))
    }, [])

    return(
        <div>
            <h2>Store:</h2>
            {storeBuildingData.map(store => 
                <StoreBuilding store={store}/>)}
        </div>
    )
}