import React from "react";
import StoreBox from "./StoreBox";
import { useState, useEffect } from "react";

export default function StoreContainer(){
    const[storeData, setStoreData] = useState([])

    useEffect(() => {
        fetch('/stores')
        .then(res => res.json())
        .then(data => setStoreData(data))
    }, [])

    return(
        <div>
            Store Container
            <StoreBox/>
        </div>
    )
}