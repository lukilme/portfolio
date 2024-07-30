import { BrowserStorage } from "./scripts/browserStorage";

const storageManager : BrowserStorage = new BrowserStorage('localStorage');

storageManager.setItem("theme","vulcan");


console.log("Hello, TypeScript");

const result: string | null = storageManager.getItem("theme");

console.log(result);

const element = document.getElementById("theme");

if(element && result){
    element.textContent = result;
}
