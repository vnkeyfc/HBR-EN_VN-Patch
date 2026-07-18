local w0qyLbH=require'xlua.util'is_end=false
parent:StartCoroutine(w0qyLbH.cs_generator(function()
_targetScript=load(
'local Custom = {}  '..CoroutineTarget..' return Custom',ChunkName)_coroutine=assert(_targetScript)()is_end=true end))function isCoroutineFinished()return is_end end