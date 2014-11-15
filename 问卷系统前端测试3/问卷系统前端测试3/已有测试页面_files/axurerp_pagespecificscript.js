for(var i = 0; i < 20; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u13'] = 'center';gv_vAlignTable['u8'] = 'center';gv_vAlignTable['u19'] = 'center';document.getElementById('u10_img').tabIndex = 0;

u10.style.cursor = 'pointer';
$axure.eventManager.click('u10', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('新建测试页面.html');

}
});
gv_vAlignTable['u17'] = 'center';gv_vAlignTable['u1'] = 'center';document.getElementById('u14_img').tabIndex = 0;

u14.style.cursor = 'pointer';
$axure.eventManager.click('u14', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('学生答题情况列表页面.html');

}
});
gv_vAlignTable['u15'] = 'center';document.getElementById('u16_img').tabIndex = 0;

u16.style.cursor = 'pointer';
$axure.eventManager.click('u16', function(e) {

if (true) {

	NewTab($axure.globalVariableProvider.getLinkUrl('教师查看具体已有测试页面.html'), "");

}
});
gv_vAlignTable['u6'] = 'center';gv_vAlignTable['u11'] = 'center';