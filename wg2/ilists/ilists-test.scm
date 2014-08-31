(use test)
(use ilists)

(test-group "ilists"
(test-group "ilists/constructors"
  (define abc (ilist 'a 'b 'c))
  (test 'a (icar abc))
  (test 'b (icadr abc))
  (test 'c (icaddr abc))
  (test (ipair 2 1) (xipair 1 2))
  (define abc-dot-d (ipair* 'a 'b 'c 'd))
  (test 'd (icdddr abc-dot-d))
  (test (iq c c c c) (make-ilist 4 'c))
  (test (iq 0 1 2 3) (ilist-tabulate 4 values))
  (test (iq 0 1 2 3 4) (iiota 5))
) ; end ilists/constructors

(test-group "ilists/predicates"
  (test-assert (proper-ilist? '()))
  (test-assert (proper-ilist? (iq 1 2 3)))
  (test-assert (not (proper-ilist? (ipair 1 2))))
  (test-assert (null-ilist? '()))
  (test-assert (not (null-ilist? (iq 1 2 3))))
  (test-error (null-ilist? 'a))
  (test-assert (not-ipair? 'a))
  (test-assert (not (not-ipair? (ipair 'a 'b))))
  (test-assert (ilist= = (iq 1 2 3) (iq 1 2 3)))
  (test-assert (not (ilist= = (iq 1 2 3 4) (iq 1 2 3))))
  (test-assert (not (ilist= = (iq 1 2 3) (iq 1 2 3 4))))
  (test-assert (ilist= = (iq 1 2 3) (iq 1 2 3)))
  (test-assert (not (ilist= = (iq 1 2 3) (iq 1 2 3 4) (iq 1 2 3 4))))
  (test-assert (not (ilist= = (iq 1 2 3) (iq 1 2 3) (iq 1 2 3 4))))
) ; end ilist/predicates

(test-group "ilist/cxrs"
  (define ab (ipair 'a 'b))
  (define cd (ipair 'c 'd))
  (define ef (ipair 'e 'f))
  (define gh (ipair 'g 'h))
  (define abcd (ipair ab cd))
  (define efgh (ipair ef gh))
  (define abcdefgh (ipair abcd efgh))
  (define ij (ipair 'i 'j))
  (define kl (ipair 'k 'l))
  (define mn (ipair 'm 'n))
  (define op (ipair 'o 'p))
  (define ijkl (ipair ij kl))
  (define mnop (ipair mn op))
  (define ijklmnop (ipair ijkl mnop))
  (define abcdefghijklmnop (ipair abcdefgh ijklmnop))
  (test 'a (icaar abcd))
  (test 'b (icdar abcd))
  (test 'c (icadr abcd))
  (test 'd (icddr abcd))
  (test 'a (icaaar abcdefgh))
  (test 'b (icdaar abcdefgh))
  (test 'c (icadar abcdefgh))
  (test 'd (icddar abcdefgh))
  (test 'e (icaadr abcdefgh))
  (test 'f (icdadr abcdefgh))
  (test 'g (icaddr abcdefgh))
  (test 'h (icdddr abcdefgh))
  (test 'a (icaaaar abcdefghijklmnop))
  (test 'b (icdaaar abcdefghijklmnop))
  (test 'c (icadaar abcdefghijklmnop))
  (test 'd (icddaar abcdefghijklmnop))
  (test 'e (icaadar abcdefghijklmnop))
  (test 'f (icdadar abcdefghijklmnop))
  (test 'g (icaddar abcdefghijklmnop))
  (test 'h (icdddar abcdefghijklmnop))
  (test 'i (icaaadr abcdefghijklmnop))
  (test 'j (icdaadr abcdefghijklmnop))
  (test 'k (icadadr abcdefghijklmnop))
  (test 'l (icddadr abcdefghijklmnop))
  (test 'm (icaaddr abcdefghijklmnop))
  (test 'n (icdaddr abcdefghijklmnop))
  (test 'o (icadddr abcdefghijklmnop))
  (test 'p (icddddr abcdefghijklmnop))

) ; end ilists/cxrs

(test-group "ilists/selectors"
  (test 'c (ilist-ref (iq a b c d) 2))
  (test-error (ilist-ref '() 2))
  (test '(1 2) (call-with-values (lambda () (icar+icdr (ipair 1 2))) list))
  (define abcde (iq a b c d e))
  (define dotted (ipair 1 (ipair 2 (ipair 3 'd))))
  (test (iq a b) (itake abcde 2))
  (test (iq c d e) (idrop abcde 2))
  (test (iq 1 2) (itake dotted 2))
  (test (ipair 3 'd) (idrop dotted 2))
  (test 'd (idrop dotted 3))
  (test abcde (iappend (itake abcde 4) (idrop abcde 4)))
  (test (iq d e) (itake-right abcde 2))
  (test (iq a b c) (idrop-right abcde 2))
  (test (ipair 2 (ipair 3 'd)) (itake-right dotted 2))
  (test (iq 1) (idrop-right dotted 2))
  (test 'd (itake-right dotted 0))
  (test (iq 1 2 3) (idrop-right dotted 0))
  (test abcde (call-with-values (lambda () (isplit-at abcde 3)) iappend))
  (test 'c (ilast (iq a b c)))
  (test (iq c) (last-ipair (iq a b c)))
) ; end ilists/selectors

(test-group "ilists/misc"
  (test 0 (ilength '()))
  (test 3 (ilength (iq 1 2 3)))
  (test (iq x y) (iappend (iq x) (iq y)))
  (test (iq a b c d) (iappend (iq a b) (iq c d)))
  (test (iq a) (iappend '() (iq a)))
  (test (iq x y) (iappend (iq x y)))
  (test '() (iappend))
  (test (iq a b c d) (iconcatenate (iq (a b) (c d))))
  (test (iq c b a) (ireverse (iq a b c)))
  (test (iq (e (f)) d (b c) a) (ireverse (iq a (b c) d (e (f)))))
  (test (ipair 2 (ipair 1 'd)) (iappend-reverse (iq 1 2) 'd))
  (test (iq (one 1 odd) (two 2 even) (three 3 odd))
    (izip (iq one two three) (iq 1 2 3) (iq odd even odd)))
  (test (iq (1) (2) (3)) (izip (iq 1 2 3)))
  (test (iq (1 2 3) (one two three))
    (call-with-values (lambda () (iunzip2 (iq (1 one) (2 two) (3 three)))) ilist))
  (test 3 (icount even? (iq 3 1 4 1 5 9 2 5 6)))
  (test 3 (icount < (iq 1 2 4 8) (iq 2 4 6 8 10 12 14 16)))
) ; end ilists/misc

(test-group "ilists/fold"

  (define lis (iq 1 2 3))
  (test 6 (ifold + 0 lis))
  (test (iq 3 2 1) (ifold ipair '() lis))
  (define lis2 (iq 'a 0 'b))
  (test 2 (ifold (lambda (x count) (if (symbol? x) (+ count 1) count)) 0 lis2))
  (test 4 (ifold
            (lambda (x count) (if (symbol? x) (+ count 1) count))
            0
            (iq "ab" "abcd" "abc")))
  (test lis (ifold-right ipair '() lis))
  (test (iq 1 3) (ifold-right
                   (lambda (x l) (if (even? x) (ipair x l) l))
                   '()
                   (iq 0 1 2 3 4)))
  (test (iq (c) (b c) (a b c))
    (ipair-fold ipair '() (iq a b c)))
  (test (iq (a b c) (b c) (c))
    (ipair-fold-right ipair '() (iq a b c))
  (test 5 (ireduce max 0 (iq 1 3 5 4 2 0)))
  (test 1 (ireduce - 0 (iq 1 2)))
  (test -1 (ireduce - 0 (iq 1 2)))

) ; end ilists/fold

) ; end ilists

(test-exit)
