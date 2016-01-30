% Make a simple knowledge base. Represent some of your favorite books and authors.

book(martian_time_slip, philip_k_dick).
book(ancillary_justice, ann_leckie).
book(kokoro, natsume_soseki).
book(kafka_on_the_shore, haruki_murakami).
book(flow_my_tears_the_policeman_said, philip_k_dick).
book(dance_dance_dance, haruki_murakami).
book(norwegian_wood, haruki_murakami).
book(slaughterhouse_five, kurt_vonnegut).
book(a_planet_for_rent, yoss).
book(ubik, philip_k_dick).

% Find all books in your knowledge base written by one author.

/*
| ?- book(Book, philip_k_dick).
Book = martian_time_slip ? a
Book = flow_my_tears_the_policeman_said
Book = ubik
yes
*/
