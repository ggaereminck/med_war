import React from "react";
import StoreBuildingBox from "./StoreBuildingBox";

export default function StoreBuilding({store}){
    return(
        <div>
            {store.store_buildings.map(storeBuilding => 
                <StoreBuildingBox storeBuilding = {storeBuilding}/>)}
        </div>
    )
}