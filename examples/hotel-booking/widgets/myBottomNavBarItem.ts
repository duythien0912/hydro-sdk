import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { Colors } from "../../../runtime/flutter/material/colors";
import { BorderRadius } from "../../../runtime/flutter/painting/borderRadius";
import { BoxDecoration } from "../../../runtime/flutter/painting/boxDecoration";
import { EdgeInsets } from "../../../runtime/flutter/painting/edgeInsets";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { Widget } from "../../../runtime/flutter/widget";
import { Container } from "../../../runtime/flutter/widgets/container";
import { GestureDetector } from "../../../runtime/flutter/widgets/gestureDetector";
import { Icon } from "../../../runtime/flutter/widgets/icon";
import { IconData } from "../../../runtime/flutter/widgets/iconData";
import { Row } from "../../../runtime/flutter/widgets/row";
import { SizedBox } from "../../../runtime/flutter/widgets/sizedBox";
import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../../runtime/flutter/widgets/text";
import { MyColors } from "../data";

export class MyBottomNavBarItem extends StatelessWidget {
    public id: number;
    public active: number;
    public function: () => void;
    public text: string;
    public icon: IconData;

    public constructor(props: {
        id: number;
        active: number;
        function: () => void;
        text: string;
        icon: IconData;
    }) {
        super();

        this.id = props.id;
        this.active = props.active;
        this.function = props.function;
        this.text = props.text;
        this.icon = props.icon;
    }

    public build(context: BuildContext): Widget {
        return new GestureDetector({
            onTap: this.function,
            child: new Container({
                padding: EdgeInsets.symmetric({
                    horizontal: 15.0,
                    vertical: 9.0,
                }),
                decoration: new BoxDecoration({
                    color:
                        this.active == this.id
                            ? Colors.white
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.0),
                }),
                child: new Row({
                    children: [
                        new Icon(this.icon, {
                            color:
                                this.active == this.id
                                    ? MyColors.darkBlue
                                    : Colors.white,
                        }),
                        new SizedBox({ width: 5 }),
                        this.active == this.id
                            ? new Text(this.text, {
                                  style: new TextStyle({
                                      color: MyColors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                  }),
                              })
                            : new Container({}),
                    ],
                }),
            }),
        });
    }
}
