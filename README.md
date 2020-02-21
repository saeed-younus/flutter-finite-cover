# finite_coverflow

Coverflow slider in flutter which helps you to create amazing slider, carousel and walkthrough sliders.

<img src="https://i.imgur.com/Lw8LfWg.gif" height="400" width="200" />&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://i.imgur.com/vNHiSm1.gif" height="400" width="200" />

## Getting Started

### Simple Crousel Example

You can create simple crousel into your app by the following:

``` AnyWidget.dart file
    FinitePager(
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/21m40ag.gif" height="400" width="200" />

### Rotational Crousel Example

You can create rotational crousel into your app by adding rotation attribute in FinitePager:

``` AnyWidget.dart file
    FinitePager(
      rotationY: 60, // Unselected item rotation value
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/jl4S0jX.gif" height="400" width="200" />

### Scaled item Crousel Example

You can create Scaled item crousel into your project by adding or changing the attribute value of scaleX and scaleY, just like this:

``` AnyWidget.dart file
    FinitePager(
      scaleX: 0.8, // Minimum scaleX value 
      scaleY: 0.4, // Minimum scaleY value 
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/vmEI2T0.gif" height="400" width="200" />

### Opacity Crousel Example

You can create opacity crousel into your app by adding minimum opacity attribute value, just like this:

``` AnyWidget.dart file
    FinitePager(
      opacity: 0.4, // Minimum opacity value for the items
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/aC2kLic.gif" height="400" width="200" />

### Stack Slider Example

You can create Stack Slider into your app by changing the type of FinitePager to PagerType.stack:

``` AnyWidget.dart file
    FinitePager(
      pagerType: PagerType.stack, // Change the FinitePager behavior to stack slider
      scrollDirection: Axis.vertical, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/vNHiSm1.gif" height="400" width="200" />

### OverScroll Stack Slider Example

You can create Overflow Stack Slider into your app by adding type to
PagerType.stack and change overscroll value.  
***Note : overscroll is only applicable on PagerType.Stack ***

``` AnyWidget.dart file
    FinitePager(
      overscroll: -300, // Over Scroll value when user slide in or slide off
      pagerType: PagerType.stack, // PagerType by default set to carousel
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[ // Add your child here
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_3.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_4.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    )
```

Here is the result for this example
<img src="https://i.imgur.com/dIBgKXr.gif" height="400" width="200" />

## Finite Coverflow attribute list

Here is the detail of all attributes

| Attribute Name   | Description                                                        | Applicable Type |
|:-----------------|:-------------------------------------------------------------------|:----------------|
| pagerType        | Set the FinitePager type i.e. PagerType.Carousel & PagerType.Stack | -               |
| reverse          | Make reverse order if is set to true                               | Both            |
| scrollDirection  | ScrollDirection of your pager i.e. Axis.Horizontal & Axis.Vertical | Both            |
| viewPortFraction | Set the view port Fraction                                         | Carousel        |
| pageSnapping     | For snapped your selected or current page                          | Both            |
| physics          | It hold ScrollPhysics effects scrolling velocity etc.              | Both            |
| onPageChanged    | Return callback and send back current index whenever selected      | Both            |
| scaleX           | Minimum x-scale of unselected page                                 | Both            |
| scaleY           | Minimum y-scale of unselected page                                 | Both            |
| opacity          | set Opacity of unselected page                                     | Both            |
| rotationX        | Maximum x-rotation of unselected page                              | Carousel        |
| rotationY        | Maximum y-rotation of unselected page                              | Carousel        |
| overscroll       | Make the last item overscrolled effect                             | Stack           |
| key              | Get key and set in pager                                           | Both            |
| children         | get list of widget and add into pager item                         |                 |

## MIT License

Copyright (c) 2020 Muhammad Saeed Younus

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
