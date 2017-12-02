module Main exposing (..)

import Html exposing (Html, text, p)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }



-- ///////////////////////////////////////


type alias Model =
    { count : Int
    }


initModel : Model
initModel =
    { count = 0
    }


type Msg
    = NoOp


update :
    Msg
    -> Model
    -> Model -- update関数を持つが何もしない(NoOp)
update msg model =
    case msg of
        NoOp ->
            model


view :
    Model
    -> Html Msg -- Modelを受け取りHtmlを返す
view model =
    p []
        [ text "count: "
        , text (toString model.count)
        ]
