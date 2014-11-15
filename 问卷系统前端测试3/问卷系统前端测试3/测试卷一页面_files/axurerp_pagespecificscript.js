for(var i = 0; i < 24; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u21'] = 'top';gv_vAlignTable['u13'] = 'center';gv_vAlignTable['u8'] = 'center';gv_vAlignTable['u19'] = 'top';gv_vAlignTable['u17'] = 'top';
u22.style.cursor = 'pointer';
$axure.eventManager.click('u22', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('学生端查看测试列表页面.html');

}
});
gv_vAlignTable['u1'] = 'center';gv_vAlignTable['u15'] = 'center';gv_vAlignTable['u6'] = 'center';gv_vAlignTable['u11'] = 'center';
u23.style.cursor = 'pointer';
$axure.eventManager.click('u23', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('测试卷答案页面.html');

}
});
