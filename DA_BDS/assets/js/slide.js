// const inputSearch = document.querySelector(".input-search")
// const autoBox = document.querySelector(".autobox")

// let recomentlist =[
//     "Đà Nẵng",
//     "Đà Lạt",
//     "Hà Nội",
//     "Hồ Chí Minh",
//     "Hải Phòng",
//     "Hà Giang",
//     "Hải Dương ",
//     "Hà Tĩnh ",
//     "Quảng Trị",
//     "Quảng Bình",
//     "Quảng Nam"
// ]
// // đoạn ni là lưu lại địa chỉ m tìm kiếm, chua có thì thêm vào ko thì thôi
// function showAdress(list) {
//     let listData
//     if(!list.length){

//     }else{
//         listData = list.join('')
//     }
//     return autoBox.innerHTML = listData
// }

// inputSearch.onkeyup = function(e) {
//     let checkData = e.target.value
//     let dataArray = []
//     if(checkData){
//         dataArray = recomentlist.filter((data) => {
//             return data.toLocaleLowerCase().startsWith(checkData.toLocaleLowerCase())
//         })
//         // lấy dữ liệu dạng html <li>.......</li>
//         dataArray = dataArray.map((data) =>{
//             return data = '<li>'+data+'</li>'
//         })
//         showAdress(dataArray)
//     }
// }


