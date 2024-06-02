module PolyLogChainRulesExt

using PolyLog
using ChainRulesCore
@scalar_rule PolyLog.reli4(x) PolyLog.reli3(x)/x
@scalar_rule PolyLog.reli3(x) PolyLog.reli2(x)/x
@scalar_rule PolyLog.reli2(x) PolyLog.reli1(x)/x
@scalar_rule PolyLog.reli1(x) one(x)/(one(x)-x)
@scalar_rule PolyLog.reli(n,x) PolyLog.reli(n-1,x)/x
end #module

