import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fridge-opening"
export default class extends Controller {
  connect() {
    var $ = (id) => document.getElementById(id);

    function openClose(){
        if($("bigDoor").style.transform == "rotateY(0deg)"){
            $("bigDoor").style.transform = "rotateY(120deg)";
            $("bigDoor").style.borderBottom = "5px solid white";
            setTimeout(function(){
                $("bigDoorBack").style.display = "block";
            },650)
        }
        else{
            $("bigDoor").style.transform = "rotateY(0deg)";
            $("bigDoor").style.borderBottom = "5px solid #222";
            setTimeout(function(){
                $("bigDoorBack").style.display = "none";
            },350)
        }
    }

    function openClose2(){
        if($("smallDoor").style.transform == "rotateY(0deg)"){
            $("smallDoor").style.transform = "rotateY(120deg)";
        }
        else{
            $("smallDoor").style.transform = "rotateY(0deg)";
        }
    }

    window.onload = function(){
        $("bigDoor").style.transform = "rotateY(0deg)";
        $("smallDoor").style.transform = "rotateY(0deg)";

        $("bigDoor").addEventListener("click", openClose);
        $("smallDoor").addEventListener("click", openClose2);
    }
  }
}
