#  borey2005/sbcl-devops:2.4.4
FROM alpine

ADD https://beta.quicklisp.org/quicklisp.lisp .

RUN apk update && apk add sbcl bash git && sbcl --load quicklisp.lisp \ 
--eval '(quicklisp-quickstart:install)' \ 
--eval '(in-package #:ql-util)' \
--eval '(defparameter do-not-prompt t)' \
--eval '(ql:quickload (list "cl-ppcre" "str" "drakma" "st-json" "trivial-string-template"))'\
--eval '(ql:add-to-init-file)' && rm -rf quicklisp.lisp

ENTRYPOINT ["sbcl"]
