struct author_name {
  char *fisrt_name;
  char *last_name;
};

struct book {
  author_name author;
  char *isbn;
  char *title;
  int year_published;
  double price;
};
