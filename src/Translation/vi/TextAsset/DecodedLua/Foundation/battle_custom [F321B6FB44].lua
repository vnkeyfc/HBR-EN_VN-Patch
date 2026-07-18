
Battle.showAdvHudWrapperEx=function(A)Battle.hideHud()
Battle.disableMiniCutIn()Battle.showAdvHudWrapper(A)Battle.showHud()
Battle.enableMiniCutIn()end
Battle.waitCommandSelectAndStartEvent=function(w0qyLbH,nsgji)
Battle.waitPreCommandSelect(w0qyLbH)Battle.hideHud()Battle.disableMiniCutIn()
Battle.waitCommandSelect(w0qyLbH)Battle.startEvent()nsgji()Battle.showHud()
Battle.enableMiniCutIn()Battle.resumeEvent()end