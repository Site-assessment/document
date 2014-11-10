##快速测试api（接口后面再补充）
##注：既然你们是在本地写的，那么这些link暂时先不用去管了
###PC后台
1.   登录
     link ： http://www.flappyant.com/sybwj/index.php/admin/welcome/boss_login（教师端登陆）
     link：  http://www.flappyant.com/sybwj/index.php/admin/welcome/stu_login （学生端登陆）
   
     post方式提交数据
                 
        username 会户名
        password 登陆密码
        state 身份（选择框 教师 0 学生 1）
        
        注：下面的username可能代表不同的身份
        
 2.  新建/编辑测试
 link:http://www.flappyant.com/sybwj/index.php/admin/pannel_form/form_add(新建表单)
 link:http://www.flappyant.com/sybwj/index.php/admin/pannel_form/form_edit(编辑表单)
     
 
     post方式提交数据
        
        user_id--(隐藏字段,教师)
        username(隐藏字段，出题人)
        form_id--（隐藏字段）
        
        type  试卷类型（默认单选 0 填空 1）
        
        form_name 测试问卷名
        ques_name 题目名称  --（动态增加题目）
        content  选项内容  （动态增加选项）

        is_answer是否未答案？
        
        注：1.考虑到是动态增加表单，在向后台传数据之前要把数据处理成一个数据然后传给后台，js实现。
           2.编辑表单时，我也会封装成这个数据传到前台，前台根据这个数据会自动展示出编辑的页面
        
        我需要的数据格式（json）  {
                  user_id:user_id,
                  username:username,
                  form_id:form_id,
                  type:0,
                  form:{
                         form_name:form_name,
                         ques:[
                               {
                               ques_name:ques_name,
                                opt:[
                                     {
                                     opt_name:opt_name,
                                     content:content,
                                     },
                                     {
                                      opt_name:opt_name,
                                      content:content,

                                     },
                                     {
                                     ...
                                     }
                                    
                                ]
                               },
                               
                               {
                               ...
                               }
                            
                         ]
                  }
               
          }       
        
 3.  测试列表
 link：http://www.flappyant.com/sybwj/index.php/admin/pannel_form/form_list
 
    列表项
        
        form_id
        form_name 测试名称
        username  出题人
        ctime  出题时间
        status 状态（进行中/未启用/已结束）
        操作  （预览/编辑/启用or结束/删除）
        --（预览要预览界面）
        
        
        
        
4.    答题情况(列表)
   
        
        form_name 下拉选择框(全部/表单名)
        
        username 用户名(学生)
        form_name 测试名称
        grades 得分
        ctime 提交时间
        操作（详情）
        
        注：详情界面再讨论设计
        
        
        
        
###用户界面

1.   测试列表<br>
2.   
     手机端网页（卡片式列表，只显示三个字段）
     
        form_id（隐藏字段）
     
        form_name 测试
        username 出题人
        ctime  创建时间
        
        注：点击列表项进入页面答题
        
        
3.  答题页面 （适配手机端，实现翻页答题）


    post 提交
  
      
        form_id （表单id，隐藏字段）
        user_id （学生,隐藏字段）
        username(学生名，隐藏字段)
        
        ques_name  测试名称
        （循环）
        opt_name   问题名称
        （循环）
        content    选项内容（radio input value=“opt_id”）
        
        注：讨论：目前答案是提交到后台再匹配得分  还是直接在前端。
        
        
        


    
  
  
    
        
      

        
        
        

   
        
        
        
       
 
 
     
 
    
        
              
      
