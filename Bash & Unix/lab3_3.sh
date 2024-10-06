declare -A borrowed_books

while IFS=: read -r book_id borrowed_count; do

    borrowed_books["$book_id"]="$borrowed_count"

done < borrowed.txt

while IFS=: read -r book_id title author available_count; do


    available_count="$(echo -e "${available_count}" | tr -d '[:space:]')"

    available_count="${available_count:-0}" 



    if [[ -n "${borrowed_books[$book_id]}" ]]; then

        borrowed_count="${borrowed_books[$book_id]}"

       
        borrowed_count="$(echo -e "${borrowed_count}" | tr -d '[:space:]')"

        if [[ "$borrowed_count" =~ ^[0-9]+$ && "$available_count" =~ ^[0-9]+$ ]]; then

            if (( borrowed_count > available_count )); then
                echo "Book title: $title has fewer available copies than borrowed."
            fi
        else
            echo "Invalid data for book ID: $book_id (Borrowed: $borrowed_count, Available: $available_count)"
        fi
    else
        echo "No borrowed record found for book ID: $book_id"
    fi
done < books.txt


