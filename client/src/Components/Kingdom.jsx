import React from "react";
import ArmyContainer from "./ArmyContainer";
import BuildingContainer from "./BuildingContainer";
import StoreContainer from "./StoreContainer";
import { useState, useEffect } from "react";


export default function Kingdom(){
    const[kingdomData, setKingdomData] = useState([])

    useEffect(() => {
        fetch('/kingdoms')
        .then(res => res.json())
        .then(data => setKingdomData(data))
    }, [])

    return(
    <div>
        Kingdom
        <ArmyContainer/>
        <BuildingContainer/>
        <StoreContainer/>
    </div>
    )}