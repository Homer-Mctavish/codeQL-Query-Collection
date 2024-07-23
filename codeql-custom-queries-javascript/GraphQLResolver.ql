/**
 * This is an automatically generated file
 * @name Hello world
 * @kind problem
 * @problem.severity warning
 * @id javascript/example/hello-world
 */

import javascript

from Decorator d1

where
    d1.getAChildExpr().(CallExpr).getCalleeName()
            in["Mutation", "Query"]
    and
    not d1.getParent().getAChild().(Decorator).getAChildExpr().(CallExpr).getCalleeName()
select d1, "is not authorized"