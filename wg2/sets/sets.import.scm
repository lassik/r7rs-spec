;;;; sets.import.scm - GENERATED BY CHICKEN 4.8.2 -*- Scheme -*-

(eval '(import scheme chicken srfi-4 srfi-69))
(##sys#register-compiled-module
  'sets
  (list)
  '((set? . sets#set?)
    (make-set . sets#make-set)
    (set-size . sets#set-size)
    (set-member? . sets#set-member?)
    (set-add! . sets#set-add!)
    (set-delete! . sets#set-delete!)
    (set-for-each . sets#set-for-each)
    (set-fold . sets#set-fold)
    (set-unfold . sets#set-unfold)
    (set . sets#set)
    (set-copy . sets#set-copy)
    (set-empty-copy . sets#set-empty-copy)
    (set-map . sets#set-map)
    (set->list . sets#set->list)
    (list->set . sets#list->set)
    (set-filter . sets#set-filter)
    (set-partition . sets#set-partition)
    (set-remove . sets#set-remove)
    (set-count . sets#set-count)
    (set-every? . sets#set-every?)
    (set-any? . sets#set-any?)
    (set-find . sets#set-find)
    (set=? . sets#set=?)
    (set<? . sets#set<?)
    (set<=? . sets#set<=?)
    (set>? . sets#set>?)
    (set>=? . sets#set>=?)
    (set-union . sets#set-union)
    (set-intersection . sets#set-intersection)
    (set-difference . sets#set-difference)
    (set-xor . sets#set-xor)
    (set-union! . sets#set-union!)
    (set-intersection! . sets#set-intersection!)
    (set-difference! . sets#set-difference!)
    (set-xor! . sets#set-xor!)
    (set-value . sets#set-value)
    (bag? . sets#bag?)
    (make-bag . sets#make-bag)
    (bag-size . sets#bag-size)
    (bag-member? . sets#bag-member?)
    (bag-add! . sets#bag-add!)
    (bag-delete! . sets#bag-delete!)
    (bag-for-each . sets#bag-for-each)
    (bag-fold . sets#bag-fold)
    (bag-unfold . sets#bag-unfold)
    (bag-element-count . sets#bag-element-count)
    (bag-increment! . sets#bag-increment!)
    (bag-decrement! . sets#bag-decrement!)
    (bag . sets#bag)
    (bag-copy . sets#bag-copy)
    (bag-empty-copy . sets#bag-empty-copy)
    (bag-map . sets#bag-map)
    (bag->list . sets#bag->list)
    (list->bag . sets#list->bag)
    (bag-filter . sets#bag-filter)
    (bag-partition . sets#bag-partition)
    (bag-remove . sets#bag-remove)
    (bag-count . sets#bag-count)
    (bag-every? . sets#bag-every?)
    (bag-any? . sets#bag-any?)
    (bag-find . sets#bag-find)
    (bag=? . sets#bag=?)
    (bag<? . sets#bag<?)
    (bag<=? . sets#bag<=?)
    (bag>? . sets#bag>?)
    (bag>=? . sets#bag>=?)
    (bag-union . sets#bag-union)
    (bag-intersection . sets#bag-intersection)
    (bag-difference . sets#bag-difference)
    (bag-union! . sets#bag-union!)
    (bag-intersection! . sets#bag-intersection!)
    (bag-difference! . sets#bag-difference!)
    (bag-for-each-unique . sets#bag-for-each-unique)
    (bag-fold-unique . sets#bag-fold-unique)
    (bag->set . sets#bag->set)
    (set->bag . sets#set->bag)
    (integer-set? . sets#integer-set?)
    (make-integer-set . sets#make-integer-set)
    (integer-set-size . sets#integer-set-size)
    (integer-set-member? . sets#integer-set-member?)
    (integer-set-add! . sets#integer-set-add!)
    (integer-set-delete! . sets#integer-set-delete!)
    (integer-set-for-each . sets#integer-set-for-each)
    (integer-set-fold . sets#integer-set-fold)
    (integer-set-unfold . sets#integer-set-unfold)
    (integer-set . sets#integer-set)
    (integer-set-copy . sets#integer-set-copy)
    (integer-set-empty-copy . sets#integer-set-empty-copy)
    (integer-set-map . sets#integer-set-map)
    (integer-set->list . sets#integer-set->list)
    (list->integer-set . sets#list->integer-set)
    (integer-set-filter . sets#integer-set-filter)
    (integer-set-partition . sets#integer-set-partition)
    (integer-set-remove . sets#integer-set-remove)
    (integer-set-count . sets#integer-set-count)
    (integer-set-every? . sets#integer-set-every?)
    (integer-set-any? . sets#integer-set-any?)
    (integer-set-find . sets#integer-set-find)
    (integer-set=? . sets#integer-set=?)
    (integer-set<? . sets#integer-set<?)
    (integer-set<=? . sets#integer-set<=?)
    (integer-set>? . sets#integer-set>?)
    (integer-set>=? . sets#integer-set>=?)
    (integer-set-union . sets#integer-set-union)
    (integer-set-intersection . sets#integer-set-intersection)
    (integer-set-difference . sets#integer-set-difference)
    (integer-set-xor . sets#integer-set-xor)
    (integer-set-union! . sets#integer-set-union!)
    (integer-set-intersection! . sets#integer-set-intersection!)
    (integer-set-difference! . sets#integer-set-difference!)
    (integer-set-xor! . sets#integer-set-xor!)
    (make-universal-integer-set . sets#make-universal-integer-set)
    (integer-set-complement . sets#integer-set-complement)
    (integer-set-complement! . sets#integer-set-complement!)
    (integer-set-min . sets#integer-set-min)
    (integer-set-delete-min! . sets#integer-set-delete-min!)
    (integer-set-max . sets#integer-set-max)
    (integer-set-delete-max! . sets#integer-set-delete-max!)
    (enum-set? . sets#enum-set?)
    (make-enum-set . sets#make-enum-set)
    (enum-set-size . sets#enum-set-size)
    (enum-set-member? . sets#enum-set-member?)
    (enum-set-add! . sets#enum-set-add!)
    (enum-set-delete! . sets#enum-set-delete!)
    (enum-set-for-each . sets#enum-set-for-each)
    (enum-set-fold . sets#enum-set-fold)
    (enum-set-unfold . sets#enum-set-unfold)
    (enum-set . sets#enum-set)
    (enum-set-copy . sets#enum-set-copy)
    (enum-set-empty-copy . sets#enum-set-empty-copy)
    (enum-set-map . sets#enum-set-map)
    (enum-set->list . sets#enum-set->list)
    (list->enum-set . sets#list->enum-set)
    (enum-set-filter . sets#enum-set-filter)
    (enum-set-partition . sets#enum-set-partition)
    (enum-set-remove . sets#enum-set-remove)
    (enum-set-count . sets#enum-set-count)
    (enum-set-every? . sets#enum-set-every?)
    (enum-set-any? . sets#enum-set-any?)
    (enum-set-find . sets#enum-set-find)
    (enum-set-find . sets#enum-set-find)
    (enum-set=? . sets#enum-set=?)
    (enum-set<? . sets#enum-set<?)
    (enum-set<=? . sets#enum-set<=?)
    (enum-set>? . sets#enum-set>?)
    (enum-set>=? . sets#enum-set>=?)
    (enum-set-union . sets#enum-set-union)
    (enum-set-intersection . sets#enum-set-intersection)
    (enum-set-difference . sets#enum-set-difference)
    (enum-set-xor . sets#enum-set-xor)
    (enum-set-union! . sets#enum-set-union!)
    (enum-set-intersection! . sets#enum-set-intersection!)
    (enum-set-difference! . sets#enum-set-difference!)
    (enum-set-xor! . sets#enum-set-xor!)
    (make-enum-type . sets#make-enum-type)
    (enum-type? . sets#enum-type?)
    (make-universal-enum-set . sets#make-universal-enum-set)
    (enum-set . sets#enum-set)
    (enum-type->alist . sets#enum-type->alist)
    (enum-type-symbol-value . sets#enum-type-symbol-value)
    (enum-type-symbol . sets#enum-type-symbol)
    (enum-value=? . sets#enum-value=?)
    (enum-value<? . sets#enum-value<?)
    (enum-value>? . sets#enum-value>?)
    (enum-value<=? . sets#enum-value<=?)
    (enum-value>=? . sets#enum-value>=?)
    (enum-set-complement . sets#enum-set-complement)
    (enum-set-complement! . sets#enum-set-complement!)
    (enum-set-projection . sets#enum-set-projection)
    (enum-set-min . sets#enum-set-min)
    (enum-set-delete-min! . sets#enum-set-delete-min!)
    (enum-set-max . sets#enum-set-max)
    (enum-set-delete-max! . sets#enum-set-delete-max!))
  (list)
  (list))

;; END OF FILE
