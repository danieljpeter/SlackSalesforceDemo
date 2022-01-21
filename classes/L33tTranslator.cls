public with sharing class L33tTranslator {

    //system.debug(L33tTranslator.translate('Slack is Awesome!'));
    public static String translate(String input) {

        Map<String, String> charMap = new Map<String, String>{
            'a' => '4',
            'b' => '6',
            'c' => '¢',
            'd' => '|)',
            'e' => '3',
            'f' => ']=',
            'g' => '6',
            'h' => '/-/',
            'i' => '1',
            'j' => '_|',
            'k' => '|X',
            'l' => '1',
            'm' => '|v|',
            'n' => '|\\|',
            'o' => '0',
            'p' => '|*',
            'q' => '(_,)',
            'r' => '2',
            's' => '5',
            't' => '7',
            'u' => 'M',
            'v' => '\\/',
            'w' => '\\/\\/',
            'x' => '%',
            'y' => 'j',
            'z' => '2'
        };

        String output = '';

        for (Integer i=0; i<input.length(); i++) {
            String c = input.substring(i, i+1).toLowerCase();
            if (charMap.containsKey(c)) {
                output += charMap.get(c);
            } else {
                output += c;
            }
        }
        return output;
    }

}