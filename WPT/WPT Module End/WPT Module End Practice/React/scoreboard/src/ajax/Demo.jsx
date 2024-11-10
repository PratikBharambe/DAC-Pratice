import React from 'react'

function Demo() {

    const getData = () => {
        const result = document.getElementById("result");
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "https://jsonplaceholder.typicode.com/users");
        xhr.send();

        xhr.onreadystatechange = () => {
            if(xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                for(let i = 0; i < data.length ; i++){
                    const para = document.createElement("p");
                    para.innerHTML = `Name : ${data[i].name} and Id is : ${data[i].id}.`;
                    result.appendChild(para);
                }
            }
        }
    }

  return (
    <>
        <button onClick={getData}>Fetch data</button>
        <div id="result"></div>
    </>
  )
}

export default Demo