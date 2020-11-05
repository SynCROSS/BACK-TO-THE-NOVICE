const json = `{"data":"I'm bad","name":"json"}`;

try {
  const user = JSON.parse(json);
  alert(user.name);
} catch (e) {
  alert(e);
}
