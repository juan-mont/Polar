#lang scribble/manual
@(require racket plot plot/utils racket/runtime-path
          scribble-math scribble/eval)

@(define (angle-label angle label r)
   (point-label (vector (* r (cos angle)) (* r (sin angle)))
                label
                #:anchor 'center))

@;(use-mathjax) To be used when complex macros are used to write LaTeX

@(plot-font-size 10)

@(define circle-plot
   (list (polar-axes #:number 12 #:ticks? #t)
         (polar (lambda (t)  (* 3 (cos t)))
                0 (* 2 pi)
                #:color 'blue
                #:width 2)
         (angle-label 0          "0"       3.5)
         (angle-label (/ pi 6)   "π/6"     3.5)
         (angle-label (/ pi 4)   "π/4"     3.5)
         (angle-label (/ pi 3)   "π/3"     3.5)
         (angle-label (/ pi 2)   "π/2"     3.5)
         (angle-label (* 2/3 pi) "2π/3"    3.5)
         (angle-label (* 3/4 pi) "3π/4"    3.5)
         (angle-label (* 5/6 pi) "5π/6"    3.5)
         (angle-label pi         "π"       3.5)
         (angle-label (* 7/6 pi) "7π/6"    3.5)
         (angle-label (* 5/4 pi) "5π/4"    3.5)
         (angle-label (* 4/3 pi) "4π/3"    3.5)
         (angle-label (* 3/2 pi) "3π/2"    3.5)
         (angle-label (* 5/3 pi) "5π/3"    3.5)
         (angle-label (* 7/4 pi) "7π/4"    3.5)
         (angle-label (* 11/6 pi) "11π/6"  3.5)))

@(define circle-path "circle.png")

@(plot-file circle-plot
            circle-path
            #:title "Circle"
            #:x-label #f
            #:y-label #f
            #:x-min -4 #:x-max 4
            #:y-min -4 #:y-max 4
            #:width 500
            #:height 500)


@(define cardioid-plot
   (list (polar-axes #:number 12 #:ticks? #t)
         (polar (lambda (t) (+ 2 (* 2 (sin t))))
                0 (* 2 pi)
                #:color 'blue
                #:width 2)
         (angle-label 0          "0"       3.5)
         (angle-label (/ pi 6)   "π/6"     3.5)
         (angle-label (/ pi 4)   "π/4"     3.5)
         (angle-label (/ pi 3)   "π/3"     3.5)
         (angle-label (/ pi 2)   "π/2"     3.5)
         (angle-label (* 2/3 pi) "2π/3"    3.5)
         (angle-label (* 3/4 pi) "3π/4"    3.5)
         (angle-label (* 5/6 pi) "5π/6"    3.5)
         (angle-label pi         "π"       3.5)
         (angle-label (* 7/6 pi) "7π/6"    3.5)
         (angle-label (* 5/4 pi) "5π/4"    3.5)
         (angle-label (* 4/3 pi) "4π/3"    3.5)
         (angle-label (* 3/2 pi) "3π/2"    3.5)
         (angle-label (* 5/3 pi) "5π/3"    3.5)
         (angle-label (* 7/4 pi) "7π/4"    3.5)
         (angle-label (* 11/6 pi) "11π/6"  3.5)))

@(define plot-path "cardioid.png")

@(plot-file cardioid-plot
            plot-path
            #:title "Cardioid"
            #:x-label #f
            #:y-label #f
            #:x-min -4 #:x-max 4
            #:y-min -4 #:y-max 4
            #:width 500
            #:height 500)

@(define fourpetal-plot
   (list (polar-axes #:number 12 #:ticks? #t)
         (polar (lambda (t) (cos (* 2 t)))
                0 (* 2 pi)
                #:color 'blue
                #:width 2)
         (angle-label 0          "0"       0.75)
         (angle-label (/ pi 6)   "π/6"     0.75)
         (angle-label (/ pi 4)   "π/4"     0.75)
         (angle-label (/ pi 3)   "π/3"     0.75)
         (angle-label (/ pi 2)   "π/2"     0.75)
         (angle-label (* 2/3 pi) "2π/3"    0.75)
         (angle-label (* 3/4 pi) "3π/4"    0.75)
         (angle-label (* 5/6 pi) "5π/6"    0.75)
         (angle-label pi         "π"       0.75)
         (angle-label (* 7/6 pi) "7π/6"    0.75)
         (angle-label (* 5/4 pi) "5π/4"    0.75)
         (angle-label (* 4/3 pi) "4π/3"    0.75)
         (angle-label (* 3/2 pi) "3π/2"    0.75)
         (angle-label (* 5/3 pi) "5π/3"    0.75)
         (angle-label (* 7/4 pi) "7π/4"    0.75)
         (angle-label (* 11/6 pi) "11π/6"  0.75)))

@(define fourpetal-path "fourpetal.png")

@(plot-file fourpetal-plot
            fourpetal-path
            #:title "Four Petal Rose"
            #:x-label #f
            #:y-label #f
            #:x-min -1 #:x-max 1
            #:y-min -1 #:y-max 1
            #:width 500
            #:height 500)

@(define limaçon-plot
   (list (polar-axes #:number 12 #:ticks? #t)
         (polar (lambda (t) (+ 1 (* 2 (sin t))))
                0 (* 2 pi)
                #:color 'blue
                #:width 2)
         (angle-label 0          "0"       2.75)
         (angle-label (/ pi 6)   "π/6"     2.75)
         (angle-label (/ pi 4)   "π/4"     2.75)
         (angle-label (/ pi 3)   "π/3"     2.75)
         (angle-label (/ pi 2)   "π/2"     2.75)
         (angle-label (* 2/3 pi) "2π/3"    2.75)
         (angle-label (* 3/4 pi) "3π/4"    2.75)
         (angle-label (* 5/6 pi) "5π/6"    2.75)
         (angle-label pi         "π"       2.75)
         (angle-label (* 7/6 pi) "7π/6"    2.75)
         (angle-label (* 5/4 pi) "5π/4"    2.75)
         (angle-label (* 4/3 pi) "4π/3"    2.75)
         (angle-label (* 3/2 pi) "3π/2"    2.75)
         (angle-label (* 5/3 pi) "5π/3"    2.75)
         (angle-label (* 7/4 pi) "7π/4"    2.75)
         (angle-label (* 11/6 pi) "11π/6"  2.75)))

@(define limaçon-path "limaçon.png")

@(plot-file limaçon-plot
            limaçon-path
            #:title "limaçon"
            #:x-label #f
            #:y-label #f
            #:x-min -3 #:x-max 3
            #:y-min -3 #:y-max 3
            #:width 500
            #:height 500)

@(define threepetal-plot
   (list (polar-axes #:number 12 #:ticks? #t)
         (polar (lambda (t)  (sin (*  3 t)))
                0 (* 2 pi)
                #:color 'blue
                #:width 2)
         (angle-label 0          "0"       0.75)
         (angle-label (/ pi 6)   "π/6"     0.75)
         (angle-label (/ pi 4)   "π/4"     0.75)
         (angle-label (/ pi 3)   "π/3"     0.75)
         (angle-label (/ pi 2)   "π/2"     0.75)
         (angle-label (* 2/3 pi) "2π/3"    0.75)
         (angle-label (* 3/4 pi) "3π/4"    0.75)
         (angle-label (* 5/6 pi) "5π/6"    0.75)
         (angle-label pi         "π"       0.75)
         (angle-label (* 7/6 pi) "7π/6"    0.75)
         (angle-label (* 5/4 pi) "5π/4"    0.75)
         (angle-label (* 4/3 pi) "4π/3"    0.75)
         (angle-label (* 3/2 pi) "3π/2"    0.75)
         (angle-label (* 5/3 pi) "5π/3"    0.75)
         (angle-label (* 7/4 pi) "7π/4"    0.75)
         (angle-label (* 11/6 pi) "11π/6"  0.75)))

@(define threepetal-path "threepetal.png")

@(plot-file threepetal-plot
            threepetal-path
            #:title "Three Petal Rose"
            #:x-label #f
            #:y-label #f
            #:x-min -1 #:x-max 1
            #:y-min -1 #:y-max 1
            #:width 500
            #:height 500)

@;images
@(define polar-cartesian "polar_vs_cartesian.png")
@(define polar-slope "polar_slope.png")
@(define polar-area "polar_area.png")
@(define polar-petal4 "petal4.png")

@title[#:style (with-html5 manual-doc-style)]{Polar Curves}

@section{Cartesian & Polar Coordinates}

@image[#:scale 0.5 polar-cartesian]{Contrast between Cartesian and Polar}

@section{Transformations}

@bold{Example 1:} Cartesian to Polar

Convert @${x^2 + y^2 = 1} to polar coordinates.

Using the substitutions @${x = r \cos \theta} and @${y = r\sin\theta}

@$${
 \begin{align*}
 x^2 + y^2 &= 1 \\
 (r\cos\theta)^2 + (r\sin\theta)^2 &= 1 \\
 r^2\cos^2\theta + r^2\sin^2\theta &= 1 \\
 r^2(\cos^2\theta + \sin^2\theta) &= 1 \\
 r^2(1) &= 1 \\
 r^2 &= 1 \\
 r &= 1
 \end{align*}}

So the unit circle @${x^2+y^2=1} corresponds simply to @${r = 1} in polar coordinates.


@bold{Example 2:} Polar to Cartesian

Convert @${r = \sin\theta} to Cartesian coordinates.

Multiply both sides by @${r}:

@$${
\begin{align*}
r &= \sin\theta \\
r^2 &= r\sin\theta
\end{align*}}

Now use @${r^2 = x^2+y^2} and @${y = r\sin\theta}:
@$${
 \begin{align*}
 x^2 + y^2 &= y
 \end{align*}}

Complete the square in @${y}:
@$${
 \begin{align*}
 x^2 + y^2 - y &= 0 \\
 x^2 + \left(y - \tfrac{1}{2}\right)^2 &= \tfrac{1}{4}
 \end{align*}}

This is a circle of radius @${\tfrac{1}{2}} centered at @${\left(0, \tfrac{1}{2}\right)}.

@section{Circle}

Here's a circle @${r = 3\cos\theta} traced in the plane:

@image[circle-path]{A circle plotted in polar coordinates}


@section{Cardioid}

Here's a cardioid @${r = 1 + 2\sin\theta} traced in the plane:

@image[plot-path]{A cardioid plotted in polar coordinates}


@section{limaçon}

Here's a limaçon @${r = 2 + \sin\theta} traced in the plane:

@image[limaçon-path]{A limaçon plotted in polar coordinates}


@section{Roses}


Here's a three petal rose @${r = \sin 3\theta} traced in the plane:

@image[threepetal-path]{A three petal rose plotted in polar coordinates}

Here's a four petal rose @${r = \cos 2\theta} traced in the plane:

@image[fourpetal-path]{A four petal rose plotted in polar coordinates}


@section{Slope of the tangent line}

The slope of the tangent is defined by @${m = \frac{dy}{dx}}.
Given that @${r = f(\theta)} then @${x = f(\theta) \cos \theta} and @${y = f(\theta)\sin \theta},
By the product rule
@$${\begin{align*}
          \frac{dy}{dx}&=\frac {\frac{dy}{d\theta}} {\frac{dx}{d\theta}}\\
                       &=\frac{f'(\theta) \sin \theta + f(\theta) \cos \theta}
                              {f'(\theta) \cos \theta - f(\theta) \sin \theta} \\
                       &=\frac{\frac{dr}{d\theta} \sin \theta + r\cos \theta}
                              {\frac{dr}{d\theta} \cos \theta - r\sin \theta}
    \end{align*}}

@bold{Example}

Finding the slope of the tangent to @${r = 2\sin\theta}
when @${\theta = \pi/6} and find the coordinates of the tangency point

@italic{Step 1:} Parametrize using @${x = r\cos\theta}, @${y = r\sin\theta}

@$${
\begin{align*}
x &= 2\sin\theta\cos\theta = \sin 2\theta \\
y &= 2\sin^2\theta
\end{align*}
}

@italic{Step 2:} Differentiate with respect to @${\theta}

@$${
 \begin{align*}
\frac{dx}{d\theta} &= 2\cos 2\theta \\
\frac{dy}{d\theta} &= 4\sin\theta\cos\theta = 2\sin 2\theta
\end{align*}}

@italic{Step 3:} Apply the polar tangent-slope formula

@$${
 \begin{align*}
\frac{dy}{dx} = \frac{dy/d\theta}{dx/d\theta} = \frac{2\sin 2\theta}{2\cos 2\theta} = \tan 2\theta
\end{align*}}

@italic{Step 4:} Evaluate at @${\theta = \frac{\pi}{6}}
@$${
\begin{align*}
\left.\frac{dy}{dx}\right|_{\theta = \pi/6} = \tan\left(\frac{\pi}{3}\right) = \sqrt{3}
\end{align*}}

@italic{Step 5:} Point of tangency
@$${
\begin{align*}
r &= 2\sin\left(\frac{\pi}{6}\right) = 1 \\
x &= \cos\left(\frac{\pi}{6}\right) = \frac{\sqrt{3}}{2}, \qquad
y = \sin\left(\frac{\pi}{6}\right) = \frac{1}{2}
\end{align*}}

The tangent line at @${\left(\frac{\sqrt{3}}{2}, \frac{1}{2}\right)} has slope @${\sqrt{3}}.

@image[#:scale 0.5 polar-slope]{Polar Equation with Slope}

@section{Area of a polar equation}

@image[#:scale 0.5 polar-area]{Area of a sector}

The formula for finding the area on a polar equations is based
on how do you find the area of a sector.
@$${A = \frac{1}{2} \int_a^b r^2 ~d\theta} 

@bold{Example}

Area of one petal of @${r = \cos(2\theta)}

@italic{Step 1:} Find the bounds of one petal

The petal along the positive @${x}-axis is traced where @${r \geq 0}.
Solve @${\cos(2\theta) = 0}:

@$${
 \begin{align*}
2\theta &= \pm\frac{\pi}{2} \\
\theta &= \pm\frac{\pi}{4}
\end{align*}}

So one full petal corresponds to @${\theta \in \left[-\frac{\pi}{4}, \frac{\pi}{4}\right]}.

@italic{Step 2:} Set up the polar area integral

@$${
 \begin{align*}
 A &= \frac{1}{2}\int_{-\pi/4}^{\pi/4} r^2 \, d\theta
   &= \frac{1}{2}\int_{-\pi/4}^{\pi/4} \cos^2(2\theta) \, d\theta
 \end{align*}}  

@italic{Step 3:} Apply the power-reduction identity

@$${\cos^2(2\theta) = \frac{1 + \cos(4\theta)}{2}}

@$${
\begin{align*}
    A &= \frac{1}{2}\int_{-\pi/4}^{\pi/4} \frac{1 + \cos(4\theta)}{2} \, d\theta \\
      &= \frac{1}{4}\int_{-\pi/4}^{\pi/4} \big(1 + \cos(4\theta)\big) \, d\theta
\end{align*}}

@italic{Step 4:} Integrate

@$${A = \frac{1}{4}\left[\theta + \frac{\sin(4\theta)}{4}\right]_{-\pi/4}^{\pi/4}}

@italic{Step 5:} Evaluate at the bounds

At @${\theta = \frac{\pi}{4}: \quad \frac{\pi}{4} + \frac{\sin(\pi)}{4} = \frac{\pi}{4} + 0 = \frac{\pi}{4}}

At @${\theta = -\frac{\pi}{4}: \quad -\frac{\pi}{4} + \frac{\sin(-\pi)}{4} = -\frac{\pi}{4} - 0 = -\frac{\pi}{4}}

@$${A = \frac{1}{4}\left(\frac{\pi}{4} - \left(-\frac{\pi}{4}\right)\right) = \frac{1}{4}\cdot\frac{\pi}{2} = \frac{\pi}{8}}

@bold{Result}

@$${A_{\text{petal}} = \frac{\pi}{8}}

@image[#:scale 0.5 polar-petal4]{Area of a petal}

@section{Practice your skills}

@itemlist[
 @item{ On graphing limaçons @hyperlink["polar_practice.html"]{Graphing a limaçon}}
 @item{ Finding the slope of the tangent line }
 @item{ Finding the area of a polar equation } ]
