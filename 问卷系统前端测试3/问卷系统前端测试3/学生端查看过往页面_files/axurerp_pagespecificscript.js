﻿for(var i = 0; i < 18; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u13'] = 'center';document.getElementById('u12_img').tabIndex = 0;

u12.style.cursor = 'pointer';
$axure.eventManager.click('u12', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('学生端查看测试列表页面.html');

}
});
gv_vAlignTable['u8'] = 'center';document.getElementById('u10_img').tabIndex = 0;

u10.style.cursor = 'pointer';
$axure.eventManager.click('u10', function(e) {

if (true) {

    self.location.href="resources/reload.html#" + encodeURI($axure.globalVariableProvider.getLinkUrl($axure.pageData.url));

}
});
gv_vAlignTable['u17'] = 'center';gv_vAlignTable['u1'] = 'center';document.getElementById('u14_img').tabIndex = 0;

u14.style.cursor = 'pointer';
$axure.eventManager.click('u14', function(e) {

if (true) {

	NewTab($axure.globalVariableProvider.getLinkUrl('测试卷1（已完成·）页面.html'), "");

}
});
gv_vAlignTable['u15'] = 'center';gv_vAlignTable['u6'] = 'center';gv_vAlignTable['u11'] = 'center';