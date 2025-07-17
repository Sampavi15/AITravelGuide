import from PIL { Image }
import os;


class GeminiLLM {
    def generate(self: GeminiLLM, prompt: str) -> str {
        if ('Colombo' in prompt) {
            return 'Colombo is the bustling capital city of Sri Lanka, known for its vibrant markets and colonial architecture.';
        } elif ('Sigiriya' in prompt) {
            return 'Sigiriya is an ancient rock fortress with stunning frescoes and breathtaking views.';
        } elif ('Hoppers' in prompt) {
            return 'Hoppers are a delicious Sri Lankan pancake made from fermented rice flour and coconut milk.';
        } elif ('Saree' in prompt) {
            return 'The traditional Sri Lankan saree is a beautiful garment worn on special occasions, rich in color and symbolism.';
        }
            else
            {
            return "Sorry, I don't have information on that topic yet.";
            }

    }
}


with entry {
    llm = GeminiLLM();
    places =

        [
        {'name' : 'Colombo' , 'image' : 'images/colombo_skyline.jpg' , 'category' : 'city' , 'quiz' :
        [
        {'question' : 'What is the capital of Sri Lanka?' , 'options' : ['a) Colombo', 'b) Kandy', 'c) Jaffna', 'd) Galle'] , 'correct' : 'a' , 'hint' : "It's in the Western Province." },

        {'question' : 'Which colonial powers influenced Colombo?' , 'options' :
        ['a) Portuguese, Dutch, British',
        'b) French',
        'c) Spanish',
        'd) None'] , 'correct' : 'a' , 'hint' : 'Think of major European colonizers in Sri Lanka.' }] },

        {'name' : 'Sigiriya Rock' , 'image' : 'images/sigiriya_rock.jpg' , 'category' : 'heritage site' , 'quiz' :
        [
        {'question' : 'Who built the Sigiriya rock fortress?' , 'options' :
        ['a) King Kasyapa',
        'b) King Dutugemunu',
        'c) King Parakramabahu',
        'd) King Vijayabahu'] , 'correct' : 'a' , 'hint' : 'He was a king with a famous palace on a rock.' },

        {'question' : 'What type of art is Sigiriya famous for?' , 'options' : ['a) Frescoes', 'b) Statues', 'c) Pottery', 'd) Tapestry'] , 'correct' : 'a' , 'hint' : 'They are beautiful wall paintings.' }] },

        {'name' : 'Hoppers' , 'image' : 'images/hopper_food.jpg' , 'category' : 'food' , 'quiz' :
        [
        {'question' : 'What is the main ingredient in hoppers?' , 'options' : ['a) Rice flour', 'b) Wheat flour', 'c) Maize', 'd) Barley'] , 'correct' : 'a' , 'hint' : "It's a staple grain in Sri Lankan cuisine." },

        {'question' : 'What is hoppers typically served with?' , 'options' : ['a) Sambol', 'b) Chocolate', 'c) Honey', 'd) Cheese'] , 'correct' : 'a' , 'hint' : "It's a spicy side dish." }] },

        {'name' : 'Traditional Saree' , 'image' : 'images/saree_clothing.jpg' , 'category' : 'culture' , 'quiz' :
        [
        {'question' : 'When are traditional Sri Lankan sarees typically worn?' , 'options' :
        ['a) Festivals and weddings',
        'b) Daily casual wear',
        'c) Sports events',
        'd) Office meetings'] , 'correct' : 'a' , 'hint' : 'These occasions are special and formal.' },

        {'question' : 'What is notable about Sri Lankan sarees?' , 'options' :
        ['a) Vibrant colors and intricate patterns',
        'b) Plain white color',
        'c) Made from synthetic fibers',
        'd) Worn only by men'] , 'correct' : 'a' , 'hint' : 'Look for bright colors and detailed designs.' }] }];
}


def display_image(image_path: Any) {
    if os.path.exists(image_path) {
        print(f"'Attempting to display: '{image_path}");
        img = Image.open(image_path);
        img.show();
    }
        else
        {
        print(f""[Image file '"{image_path}"' not found. Please view it manually.]"");
        }

}


def get_ai_response(place_name: Any, topic: Any) {
    topic = topic.lower();
    if {
        (place_name == 'Colombo')
        if ('food' in topic) {
            return 'Colombo offers a fantastic variety of Sri Lankan street foods, including kottu and hoppers.';
        } elif (('legend' in topic) or ('history' in topic) ) {
            return 'Colombo has a rich colonial history influenced by the Portuguese, Dutch, and British.';
        }
            else
            {
            return 'Colombo is the bustling capital city of Sri Lanka, known for its vibrant markets and colonial architecture.';
            }

    } elif {
        (place_name == 'Sigiriya Rock')
        if (('legend' in topic) or ('history' in topic) ) {
            return 'Sigiriya is famous for the ancient rock fortress built by King Kasyapa and the stunning frescoes.';
        } elif (('view' in topic) or ('travel' in topic) ) {
            return 'Climbing Sigiriya offers breathtaking panoramic views of the surrounding jungles and countryside.';
        }
            else
            {
            return 'Sigiriya is an ancient rock fortress with stunning frescoes and breathtaking views.';
            }

    } elif {
        (place_name == 'Hoppers')
        if (('recipe' in topic) or ('how to' in topic) ) {
            return 'Hoppers are made from fermented rice flour and coconut milk, cooked in a bowl-shaped pan until crispy on the edges.';
        } elif (('taste' in topic) or ('flavor' in topic) ) {
            return 'Hoppers have a unique combination of crisp edges and a soft, spongy center, often served with spicy sambol.';
        }
            else
            {
            return 'Hoppers are a delicious Sri Lankan pancake made from fermented rice flour and coconut milk.';
            }

    } elif {
        (place_name == 'Traditional Saree')
        if (('occasion' in topic) or ('when to wear' in topic) ) {
            return 'Sri Lankan sarees are traditionally worn during festivals, weddings, and cultural ceremonies.';
        } elif (('design' in topic) or ('color' in topic) ) {
            return 'The sarees often feature vibrant colors and intricate patterns symbolizing cultural heritage.';
        }
            else
            {
            return 'The traditional Sri Lankan saree is a beautiful garment worn on special occasions, rich in color and symbolism.';
            }

    }
        else
        {
        return "Sorry, I don't have information on that topic yet.";
        }

}


def run_quiz_for_place(place: Any) {

        if
        (('quiz' not in place) or not place[ 'quiz' ] )
        {
        return;
        }
    print(f"'\n🎯 Quiz time for '{place[ 'name' ]}'!'");
    score = 0;
    for (i, q) in enumerate(place[ 'quiz' ], 1) {
        print(f"'\nQuestion '{i}': '{q[ 'question' ]}");
        for opt in q[ 'options' ] {
            print(opt);
        }
        attempts = 3;
    while (attempts > 0) {
        ans = input('Your answer (a/b/c/d): ').strip().lower();
    if (ans == q[ 'correct' ]) { print('✅ Correct!'); score += 1; break; }
        else
        {
        attempts -= 1;
        }
    if (attempts > 0) {
        print(f"'❌ Incorrect! Try again. Hint: '{q[ 'hint' ]}");
    }
        else
        {
        print(f""❌ Out of attempts! Correct answer was '"{q[ 'correct' ]}"'"");
        }
      } }
    print(
        f"'Your score for '{place[ 'name' ]}' quiz: '{score}' out of '{len(place[ 'quiz' ])}"
    );
}


def travel_guide() {
    print('🌍 Welcome to the Sri Lanka AI Travel Guide!');
    print(('=' * 60));
    for place in places {
        print(f"'\n📍 Now exploring: '{place[ 'name' ]}' ('{place[ 'category' ]}')'");
        display_image(place[ 'image' ]);
        prompt =
            f"'Describe '{place[ 'name' ]}', a '{place[ 'category' ]}' in Sri Lanka, including interesting history, culture, and travel tips.'";
        description = llm.generate(prompt);
        print(('\n' + description));
        while True { user_input =
            input("\nAsk me about legends, food, or type 'next' to continue: ").strip().lower();
            if
            (user_input == 'next')
            {
            break;
            }
            answer = get_ai_response(place[ 'name' ], user_input);  }
        run_quiz_for_place(place);
    }
    print('\n🎉 Thanks for exploring Sri Lanka with the AI Travel Guide!');
}


with entry {
    if (__name__ == '__main__') {
        travel_guide();
    }
}