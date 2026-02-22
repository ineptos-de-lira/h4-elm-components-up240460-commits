module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords str1 str2 =
    str1 ++ str2


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map Char.isUpper chars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars predicate =
    List.map predicate chars


headers : String -> Html.Html msg
headers content =
    Html.div []
        [ Html.h1 [] [ Html.text content ]
        , Html.h2 [] [ Html.text content ]
        , Html.h3 [] [ Html.text content ]
        , Html.h4 [] [ Html.text content ]
        , Html.h5 [] [ Html.text content ]
        , Html.h6 [] [ Html.text content ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink url label =
    Html.a [ Html.Attributes.href url ] [ Html.text label ]
