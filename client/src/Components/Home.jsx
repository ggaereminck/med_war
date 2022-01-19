import React from "react";
import ArmyContainer from "./ArmyContainer";
import BuildingContainer from "./BuildingContainer";
import StoreContainer from "./StoreContainer";

export default function Home(){
    return(
        <div>
            Home
            <ArmyContainer/>
            <BuildingContainer/>
            <StoreContainer/>
        </div>
    )
}