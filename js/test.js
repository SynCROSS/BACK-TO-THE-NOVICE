require('C:/Users/kuuha/AppData/Local/Yarn/Data/global/node_modules/dotenv').config();
const PASSWORD = process.env.PASSWORD;

const userInput = prompt('비밀번호를 맞춰보세요.');
if (PASSWORD === userInput) {
  alert('로그인 돠었습니다.');
} else {
  alert('로그인에 실패하였습니다.');
}
