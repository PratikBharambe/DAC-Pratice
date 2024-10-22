const total = function (...n) {
  let tot = 0;
  for (let e of n) {
    if (typeof e === "number" || typeof e === "boolean") tot += e;
  }
  return tot;
};
