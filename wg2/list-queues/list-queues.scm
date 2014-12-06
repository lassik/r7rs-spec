(module list-queues ()
  (import scheme)
  (import (only chicken include define-record-type case-lambda error))
  (export make-list-queue list-queue list-queue-copy list-queue-unfold list-queue-unfold-right)
  (export list-queue? list-queue-empty?)
  (export list-queue-front list-queue-back)
  (export list-queue-add-front! list-queue-add-back! list-queue-remove-front! list-queue-remove-back!)
  (export list-queue-remove-all!)
  (export list-queue-clear!)
  (export list-queue-length list-queue-append list-queue-concatenate)
  (export list-queue-map list-queue-map! list-queue-for-each)
  (export list-queue-list list-queue-set-list!)
  (export list-queue-first-last)
  (include "list-queues-impl.scm")
)
