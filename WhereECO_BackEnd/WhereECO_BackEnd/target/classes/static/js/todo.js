const map = document.querySelector(".js-map");
const todo = document.querySelector(".js-todo");

const mapA = document.querySelector(".js-mapA");
const todoA = document.querySelector(".js-todoA");
// css 애니메이션
const NOTICESHOWING_CN = "noticeShowing";

const elementList = [map, todo];
let currentIndex = 0;
let beforeIndex = 0;
const elementLinkList = [mapA, todoA];

const addClassNameToCurrentElement = (index) => {
    elementList[beforeIndex].classList.remove(NOTICESHOWING_CN);
    elementList[index].classList.add(NOTICESHOWING_CN);
    beforeIndex = index;
};

const noticeInit = () => {
    elementLinkList.map((link, index) => {
        link.addEventListener("click", () => {
            addClassNameToCurrentElement(index);
        });
    });
};

noticeInit();