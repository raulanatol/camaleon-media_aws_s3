String.prototype.to_url = function () {
  if (this.startsWith('http://') || this.startsWith('https://')) {
    return this;
  } else {
    return root_url.slice(0, root_url.length - 1) + this;
  }
};
