// useState import
import React, { useState } from "react";

// react icon
// Downarrow icon
import { RxCaretDown } from "react-icons/rx";
// Search icon
import { IoIosSearch } from "react-icons/io";
// Offers icon
import { CiDiscount1 } from "react-icons/ci";
// Help Icon
import { IoHelpBuoyOutline } from "react-icons/io5";
// Sign In icon
import { BsPerson } from "react-icons/bs";
// Cart icon
import { BsCart3 } from "react-icons/bs";


// React Functionla Component
export default function Header() {
  // toggle contant for the side menu visibility controlling
  const [toggle, setToggle] = useState(false);

  // function to set side menu visibility true
  const showSideMenu = () => {
    setToggle(true);
  };

  // function to set side menu visibility false
  const hideSideMenu = () => {
    setToggle(false);
  };

  // creating array of object for displayign the navbar in header in more effecitive way
  const links = [
    {
      icon : <IoIosSearch/>,
      name : "Search"
    },
    {
      icon : <CiDiscount1/>,
      name : "Offers",
      sup : "New" 
    },
    {
      icon : <IoHelpBuoyOutline/>,
      name : "Help"
    },
    {
      icon : <BsPerson/>,
      name : "Sign In"
    },
    {
      icon : <BsCart3/>,
      name : "Cart",
      sup : "(3)"
    }
    
  ]

  // return to retun html block
  return (
    // main blcok to return in retun block
    <>
      {/* block g=to get the bacl screen with opacity after clicking on arraw in header */}
      <div
        className="black-overlay w-full h-full fixed duration-500"
        onClick={hideSideMenu}
        style={{
          opacity: toggle ? 1 : 0,
          visibility: toggle ? "visible" : "hidden",
        }}
      >
        {/* to get the white block after clicking the arrao in the header */}
        <div
          className="w-[500px] bg-white h-full absolute duration-[400ms]"
          style={{
            left: toggle ? "0%" : "-100%",
          }}
          onClick={(e) => {
            e.stopPropagation();
          }}
        ></div>
      </div>

      {/* The main header tag here all the containes arrives */}
      <header className="p-[15px] shadow-xl text-[#686b78]">
        <div className="max-w-[1200px] mx-auto flex items-center">
          <div className="w-[100px]">
            <img src="images/logo.png" className="w-full" alt="Swiggy Logo" />
          </div>
          <div className="">
            <span className="font-bold border-b-[3px] border-[black]">
              Vadgaon Shri
            </span>
            , Pune, Maharashatra, India
            <RxCaretDown
              onClick={showSideMenu}
              fontSize={25}
              className="inline font-bold text-[#fc8019]"
            />
          </div>

          {/* navbar inside the header tag */}
          <nav className="flex list-none gap-10 ml-auto font-semibold text-[18px]">

            {/* using map functio to map li tag with the array of object created for navbar */}
            {
              links.map(
                (link, index) => {
                  // key index to identify each key and value uniquely to avoid confussion
                  return <li key={index} className="cursor-pointer flex items-center gap-2 hover:text-[#fc8019]"> {link.icon} {link.name} <sup>{link.sup}</sup></li>
                }
              )
            }     
          </nav>
          {/* end of navbar */}
          
        </div>
      </header>
      {/* end of header tag */}
    </>
  );
}
