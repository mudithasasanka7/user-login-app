// src/auth.js
export const isAuthenticated = () => {
  return localStorage.getItem("user") !== null;
};

export const login = (username) => {
  localStorage.setItem("user", JSON.stringify({ username }));
};

export const logout = () => {
  localStorage.removeItem("user");
};
