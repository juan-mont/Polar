#lang scribble/manual
@(require racket plot plot/utils racket/runtime-path
          scribble-math scribble/eval)

@(define (angle-label angle label r)
   (point-label (vector (* r (cos angle)) (* r (sin angle)))
                label
                #:anchor 'center))
@(use-mathjax)
@(plot-font-size 10)

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
            #:width 400
            #:height 400)

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
            #:width 400
            #:height 400)

@(define limason-plot
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

@(define limason-path "limason.png")

@(plot-file limason-plot
            limason-path
            #:title "Limason"
            #:x-label #f
            #:y-label #f
            #:x-min -3 #:x-max 3
            #:y-min -3 #:y-max 3
            #:width 400
            #:height 400)

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
            #:width 400
            #:height 400)


@(define polar-cartesian "polar_vs_cartesian.png")


@title{Polar Curves}

@section{Cartesian & Polar Coordinates}

@image[#:scale 0.5 polar-cartesian]{Contrast between Cartesian and Polar}

@section{Transformations}

Example 1: Cartesian to Polar

Convert @$["x^2 + y^2 = 1"] to polar coordinates.

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


Example 2: Polar to Cartesian

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


@section{Cardioid}

Here's a cardioid @${r = 1 + 2\sin\theta} traced in the plane:

@image[plot-path]{A cardioid plotted in polar coordinates}


@section{Limason}

Here's a Limason @${r = 2 + \sin\theta} traced in the plane:

@image[limason-path]{A limason plotted in polar coordinates}


@section{Roses}


Here's a three petal rose @${r = \sin 3\theta} traced in the plane:

@image[threepetal-path]{A three petal rose plotted in polar coordinates}

Here's a four petal rose @${r = \cos 2\theta} traced in the plane:

@image[fourpetal-path]{A four petal rose plotted in polar coordinates}

@section{Practice your graphing skills}
On the following link @hyperlink["polar_practice.html"]{Practice}
you can practice your polar graphing skills