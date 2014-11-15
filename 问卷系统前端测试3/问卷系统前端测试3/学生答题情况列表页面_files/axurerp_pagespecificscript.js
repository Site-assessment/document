for(var i = 0; i < 20; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u13'] = 'center';document.getElementById('u12_img').tabIndex = 0;

u12.style.cursor = 'pointer';
$axure.eventManager.click('u12', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('已有测试页面.html');

}
});
gv_vAlignTable['u8'] = 'center';gv_vAlignTable['u19'] = 'center';document.getElementById('u10_img').tabIndex = 0;

u10.style.cursor = 'pointer';
$axure.eventManager.click('u10', function(e) {

if (true) {

	NewTab($axure.globalVariableProvider.getLinkUrl('新建测试页面.html'), "");

}
});
gv_vAlignTable['u17'] = 'center';gv_vAlignTable['u1'] = 'center';gv_vAlignTable['u15'] = 'center';gv_vAlignTable['u6'] = 'center';gv_vAlignTable['u11'] = 'center';document.getElementById('u18_img').tabIndex = 0;

u18.style.cursor = 'pointer';
$axure.eventManager.click('u18', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('测试卷一学生答题情况页面.html');

}
});
