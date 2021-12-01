import React, {useState} from 'react';
import Axios from 'axios';

const SearchEngine = () => {
    const [Park_Keyword, setPark_Keyword] = useState("");
    const [Act_Keyword, setAct_Keyword] = useState("");
    const [select_date, setSelect_date] = useState("");
    const [Resultlist, setResultlist] = useState([]);

    /*
    const SearchEng = () => {
        Axios.post('http://localhost:3001/api/create_recommendation', {
            Park_Keyword: Park_Keyword, 
            Act_Keyword: Act_Keyword, 
            select_date: select_date,}).then((response) => {
                setResultlist(response.data);
        });
    };
    */
    const SearchEng = () => {
        Axios.get(`http://localhost:3001/api/create_recommendation/${Park_Keyword}&${Act_Keyword}&${select_date}`).then((response) => {
            //setResultlist(response.data);   
        });
    };

    const ShowRec = () => {
        Axios.get("http://localhost:3001/api/ShowRec").then((response) => {
            setResultlist(response.data);
        });
    };
    
    return (
        <>
                    <div className = "form">
                    <div>
                        <label>
                        <input type = "text" name = "Park_Keyword" id = "Park_Keyword" onChange = {(e) => {
                            setPark_Keyword(e.target.value);
                        }}
                        placeholder = "Enter Park Name" required/>
                        </label>
                    </div>
                    <div>
                        <label>
                        <input type = "text" name = "Act_Keyword" id = "Act_Keyword" onChange = {(e) => {
                            setAct_Keyword(e.target.value);
                        }}
                        placeholder = "Enter Activity Name" required/>
                        </label>
                    </div>
                    <div>
                        <label for="start">Desired date:</label>
                        <input type="date" id="start" name="Confirm_Date"
                            min="2021-11-01" max="2022-12-31" onChange = {(e) => {
                                setSelect_date(e.target.value);
                            }} required/>
                    </div>
                    <div>
                        <button onClick={SearchEng}>Create Recommendation Parks List</button>
                    </div>    
                        <button onClick={ShowRec}>Show Recommendation Parks List</button>
                        {Resultlist.map((val) => {
                                return (
                                    <div>
                                        <p>---------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
                                        <p> ParkName: {val.ParkName} | Entrance Fee: {val.Entrance_Fee} USD</p>
                                        <p> Date: {val.Date} | Temperature: {val.Temperature} ºC </p>
                                        <p> Weather: {val.Weather_Description} | Week Day: {val.Day} </p>
                                        <p> Open Hours: {val.Hours} | Related Article: {val.URL} </p>
                                        <p> ActivityName: {val.ActivityName} | Activity Choice: {val.Activity_Choice} </p>
                                        <p> Crowdedness: {val.Crowdedness}</p>
                                        
                                    </div>
                                );
                        })}     
                        </div>

        </>
    )
}

export default SearchEngine