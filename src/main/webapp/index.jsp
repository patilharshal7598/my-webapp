<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link href="style.css" rel="stylesheet" type="text/css" />

<style>
* {
    margin: 10px;
    padding: 5px;
    font-family: "Montserrat";
}

.head{ 
    font-size: 24px;
    font-weight: 600;
    max-height: 40px;
    height: fit-content;
    max-width: 100%;
    padding: 10px;
    border-radius: 10px;
    border: 2px groove rgb(1, 1, 12);
    background-color:  rgba(9, 79, 121, 1);
    color: white;
}

#address {

    background: rgb(226, 226, 226);
    background: -moz-linear-gradient(29deg, rgba(226, 226, 226, 1) 0%, rgba(9, 79, 121, 1) 90%);
    background: -webkit-linear-gradient(29deg, rgba(226, 226, 226, 1) 0%, rgba(9, 79, 121, 1) 90%);
    background: linear-gradient(29deg, rgba(226, 226, 226, 1) 0%, rgba(9, 79, 121, 1) 90%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#e2e2e2", endColorstr="#094f79", GradientType=1);

    max-width: 750px;
    width:fit-content;

    border: 2px groove rgb(221, 219, 219);
    box-shadow: 3px 3px 10px black;
    padding: -10%;
}

.addTitle {
    border: 2px groove rgb(228, 223, 223);
    box-shadow: 3px 3px 10px black;
    font-size: 20px;
    font-weight: 600;
}

input,
select {
    border: 1px groove white;
    height: 22px;
    box-shadow: 3px 3px 5px rgb(51, 40, 40);
    border-radius: 5px;
}

.div {
    min-width: 500px;
    width: fit-content;
    height: fit-content;
    margin-left: 50px;
}

select {
    height: fit-content;
    width: fit-content;
}

.lbl {
    font-size: 15px;
}

.inAdd {
    width: 435px;
}

.btnAdd {
    margin-left: 15%;
}

#btnCheck,
#btnProceed {
    border: none;
    background-color: black;
    border-radius: 5px;
    height: 30px;
    width: 165px;
    color: white;
}

#btnCheck:hover,
#btnProceed:hover {
    background-color: rgb(72, 73, 73);
}

#btnCancle {
    background-color: none;
    border: none;
}

#btnCancle:hover {
    color: red;
}

span {
    color: rgb(238, 10, 10);
}

table {
    border: 2px groove black;
    box-shadow: 3px 3px 10px black;
    max-width: 300px;
    width: fit-content;
    height: fit-content;
    border-radius: 10px;
}

td {
    min-width: 150px;
    height: fit-content;
}

.buttons {
    display: inline-flex;
    text-align: center;
    margin: -17px;

}

.btn {
    margin-left: 8%;
    font-size: 20px;
    font-weight: 900;
    color: black;
    padding: -10px;
}

.btn:hover {
    color: rgb(214, 6, 6);
}

.lblcnt {
    margin: -3px;
    text-align: center;
}

.count {
    font-size: 12px;
}

.img {
    margin: 10px;
    padding: 10px;
    width: 100px;
    height: 100px;
}

.name {
    font-size: 12px;
    text-align: center;
}

.subTotal {
    text-align: center;
}

.ttlcount {
    text-align: center;
}

.line {
    width: 90%;
}

hr {
    box-shadow: 3px 3px 10px black;
}

#countTotal {
    font-size: 18px;
    font-weight: 400;
    float: right;
}

.btnProceed {
    margin-left: 25%
}

.debitcard {
    position: absolute;
    top: 50%;
    left: 50%;
    border: 2px groove black;
    box-shadow: 3px 3px 10px black;
    max-width: 500px;
    width: fit-content;
    height: fit-content;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    background-color: white;
    padding: 10px;
    z-index: 99;
    display: none;
}

.msg {
    position: absolute;
    top: 50%;
    left: 50%;
    border: 2px groove black;
    box-shadow: 3px 3px 10px black;
    max-width: 500px;
    width: fit-content;
    height: fit-content;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    background-color: white;
    padding: 10px;
    z-index: 99;
    display: none;
}
</style>


    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script>

//Click Event jQuery

$(document).ready(function () {

    $("#btnCheck").click(function () {

        if(totalCount <=0){
            alert("Product is not added in Cart");
            return false;
        }
        
        else if ($('#fname').val() == "") {
            alert('First Name is Required..!');
            return false;
        }

        else if ($('#lname').val() == "") {
            alert('Last Name is Required')
            return false;
        }

        else if ($('#add').val() == "") {
            alert("Address is Required");
            return false;
        }

        else if ($('#email').val() == "") {
            alert("Email is Required");
            return false;
        }

        else if ($('#contact').val() == "") {
            alert("Contact No is Required");
            return false;
        }

        else if ($('#state').val() == "") {
            alert("State is Required");
            return false;
        }

        else if ($('#pin').val() == "") {
            alert("Pin is Required");
            return false;
        }

        else {
            $("#address").fadeOut(2000);
            $("#product").fadeOut(2000);
            $(".debitcard").fadeIn(2000);
            return true;
        }
    })
    //console.log("debit");  
})

$(document).ready(function () {
    $("#btnProceed").click(function () {

        if ($(".cardnumber").val() == "") {
            alert("Card Number is Required");
            return false;
        }

        else if ($(".cvvNo").val() == "") {
            alert("CVV is Required");
            return false;
        }

        else {
            $(".debitcard").fadeOut(2000);
            $(".msg").fadeIn(1000);
            //console.log("Thank you") 

            setInterval(function () {
                window.location.reload();
            }, 5000)
            return true;
        }
    })

    $("#btnCancle").click(function(){
        setInterval(function(){
            window.location.reload()
        },1000)
    })

    $("#btnPayCancel").click(function(){
        setInterval(function(){
            window.location.reload()
        },1000)
    })
})

//-------------Button Functionality-------------


var click1 = 0;
function onClickAdd1() {

    click1 += 1;
    document.getElementById("click1").innerHTML = click1;
    QtyCount1();
    Total();
    payment();
    pdName();
};

function onClickSub1() {
    if (click1 >= 1) {
        click1 -= 1;
        document.getElementById("click1").innerHTML = click1;
    }
    QtyCount2();
    Total();
    payment();
    pdName();
};

var lblcount1 = 0
function QtyCount1() {
    lblcount1 = 1500 * click1;
    document.getElementById("lblcount1").innerHTML = lblcount1;
}

function QtyCount2() {

    if (lblcount1 >= 1) {
        lblcount1 = lblcount1 - 1500;
        document.getElementById("lblcount1").innerHTML = lblcount1;
    }
}

// Add and Sub button 2

var click2 = 0;
function onClickAdd() {

    click2 += 1;
    document.getElementById("click2").innerHTML = click2;
    QtyCount3();
    Total();
    payment();
    pdName();
};

function onClickSub() {
    if (click2 >= 1) {
        click2 -= 1;
        document.getElementById("click2").innerHTML = click2;
    }
    QtyCount4();
    Total();
    payment();
    pdName();
};

var lblcount2 = 0;
function QtyCount3() {
    lblcount2 = 600 * click2;
    document.getElementById("lblcount2").innerHTML = lblcount2;
}

function QtyCount4() {
    if (lblcount2 >= 1) {
        lblcount2 = lblcount2 - 600;
        document.getElementById("lblcount2").innerHTML = lblcount2;
    }
}

// total

var totalCount = 0;
function Total() {
    totalCount = lblcount1 + lblcount2
    document.getElementById("totalCount").innerHTML = totalCount;

}

var lblProceed = 0;
function payment() {
    lblProceed = lblcount1 + lblcount2;
    document.getElementById("lblProceed").innerHTML = lblProceed;
}


var productName= 0;
function pdName(){
    productName = click1 + click2
    document.getElementById("productName").innerHTML = productName
}

</script>

</head>

<body>

    <div class="head">
        Shopping Cart
    </div>

    <!--Shipping Address-->

    <div style="float:left" id="address" class="add">
        <div class="titleName">
            <p class="addTitle">Shipping Address</p>
        </div>

        <div class="div">
            <div style="float: left;">
                <label class="lbl">FirstName<span>*</span></label><br>
                <input id="fname" name="FirstName" type="text" placeholder="FirstName" /><br>
            </div>

            <div style="float: right;">
                <label class="lbl">LastName<span>*</span></label><br>
                <input id="lname" name="LastName" value="" type="text" placeholder="LastName" /><br>
            </div>
        </div>

        <div class="add">
            <div style="float:left" class="div">
                <label class="lbl">Address<span>*</span></label><br>
                <input id="add" list="Addressbar" class="inAdd" placeholder="Address" /><br>
                <datalist  id="Addressbar">
                    <option>Laxman Nagar near Dange Chouk Pune</option>
                    <option>Shastri Apartment M.G Road, next to Coffee House, opp. SGS Mall, Pune</option>
                    <option>472 Pattani House Kalbadevi Rd Kalbadevi ,Pune</option>
                </datalist>
            </div>
        </div>

        <div class="div">
            <div style="float:left">
                <label class="lbl">Email<span>*</span></label><br>
                <input id="email" name="Email" type="text" placeholder="Email" /><br>
            </div>

            <div style="float:right">
                <label class="lbl">Contact No.<span>*</span></label><br>
                <input id="contact" name="Contact" type="text" placeholder="Contact No." /><br>
            </div>
        </div>

        <div class="div">
            <div style="float:left">
                <label class="lbl">State<span>*</span></label><br>
                <input id="state" name="State" type="text" placeholder="State" /><br>
            </div>

            <div style="float:right">
                <label class="lbl">Pincode<span>*</span></label><br>
                <input id="pin" name="Pincode" type="text" placeholder="Pincode" /><br>
            </div>
        </div>

        <div class="div">
            <div>
                <Label class="lbl">Address Type</Label>
                <input id="home" name="radio1" type="radio" value="home" />
                <label for="home" class="lbl">Home</label>
                <input id="office" name="radio1" type="radio" value="office" />
                <label for="office" class="lbl">Office</label>
            </div>
        </div>

        <div class="div">
            <button id="btnCheck" class="btnAdd">Checkout</button>
            <button id="btnCancle" class="btnAdd">Cancel</button>
        </div>

    </div>






    <!--Products-->

    <div id="product" style="float: right;">
        <table>
            <tr>
                <td><img class="img"
                        src="https://www.electronicscomp.com/image/cache/catalog/bbc-micro-bit-v2-go-kit-5-400x400.JPG">
                </td>
                <td class="name"><label id="lbl1">BBC Micro:Bit<p>₹ 1500</p><label class="buttons">
                            <label id="btnSub1" onclick="onClickSub1()" class="btn">-</label>
                            <p class="count">Qty:<label class="lblcnt" id="click1">0</label></p>
                            <label id="btnAdd1" onclick="onClickAdd1()" class="btn">+</label>
                        </label></label> </td>

                <td class="subTotal">
                    <div>₹ - <label class="lbl" id="lblcount1"> 0 </label></div>
                </td>
            </tr>

            <tr>
                <td><img class="img" src="https://m.media-amazon.com/images/I/71z22cRPeeL._SX522_.jpg"></td>
                <td class="name"><label id="lbl2">Arduino Uno R3 <p>₹ 600</p>
                        <div class="buttons">
                            <label onclick="onClickSub()" id="btnSub" class="btn">-</label>
                            <p class="count">Qty:<label class="lblcnt" id="click2">0</label></p>
                            <label id="btnAdd" onclick="onClickAdd()" class="btn">+</label>
                        </div>
                    </label></td>

                <td class="subTotal">
                    <div>₹ - <label class="lbl" id="lblcount2"> 0 </label></div>
                </td>
            </tr>


            <tr>
                <td class="line" colspan="3">
                    <hr />
                </td>
            </tr>


            <tr>
                <td class="total" colspan="2">
                    <h2 id="countTotal">Total - </h2>
                </td>
                <td class="ttlcount">
                    <div>₹ <label id="totalCount">0</label></div>
                </td>
            </tr>
        </table>
    </div>

    <!--Card Details-->

    <div class="debitcard" id="card">
        <div class="header">
            <h4 class="title">Credit Card detail</h4>
        </div>

        <div style="float: left;" class="formbody">
            <label class="lbl">Card Number</label><br>
            <input type="text" class="cardnumber" placeholder="Card Number">
        </div>

        <div class="datefield">
            <div style="float:left" class="month">
                <label class="lbl">Expiry Month</label><br>
                <select id="selectMonth">
                    <option selected disabled value="">--Select One--</option>
                    <option value="january">January</option>
                    <option value="february">February</option>
                    <option value="march">March</option>
                    <option value="april">April</option>
                    <option value="may">May</option>
                    <option value="june">June</option>
                    <option value="july">July</option>
                    <option value="august">August</option>
                    <option value="september">September</option>
                    <option value="october">October</option>
                    <option value="november">November</option>
                    <option value="december">December</option>
                </select>
            </div>
            <div style="float: right;" class="year">
                <label class="lbl">Expiry Year</label><br>
                <select id="selectYear">
                    <option selected disabled value="">--Select One--</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                </select>
            </div>
        </div>


        <div style="float: left;" class="cvv">
            <label class="lbl">CVV</label><br>
            <input class="cvvNo" type="text" placeholder="CVV">
        </div>

        <div>
            <label>Proceed to pay <br> ₹ - <label id="lblProceed"> 0 </label>
        </div>

        <br>
        <button style="float: left;" type="submit" id="btnProceed" class="btnAdd">Proceed</button>
        <button style="float: right;" id="btnPayCancel" class="btnAdd">Cancel</button>
    </div>
    </div>

    <div style="float: right;" id="confirm" class="msg">
        <label>You are Purchse -<label id="productName">0</label>Items.</label><br>
        <label>Thank you for Your Order.</label>
    </div>
</body>

</html>
