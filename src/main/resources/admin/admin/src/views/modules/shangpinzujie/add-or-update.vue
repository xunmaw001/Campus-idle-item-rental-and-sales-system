<template>
  <div class="addEdit-block">
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
	  :style="{backgroundColor:addEditForm.addEditBoxColor}"
    >
      <el-row>
                        <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="卖家号" prop="maijiahao">
          <el-input v-model="ruleForm.maijiahao" 
              placeholder="卖家号" clearable  :readonly="ro.maijiahao"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="卖家号" prop="maijiahao">
              <el-input v-model="ruleForm.maijiahao" 
                placeholder="卖家号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="卖家名" prop="maijiaming">
          <el-input v-model="ruleForm.maijiaming" 
              placeholder="卖家名" clearable  :readonly="ro.maijiaming"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="卖家名" prop="maijiaming">
              <el-input v-model="ruleForm.maijiaming" 
                placeholder="卖家名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="商品" prop="shangpin">
          <el-input v-model="ruleForm.shangpin" 
              placeholder="商品" clearable  :readonly="ro.shangpin"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="商品" prop="shangpin">
              <el-input v-model="ruleForm.shangpin" 
                placeholder="商品" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="类型" prop="leixing">
          <el-input v-model="ruleForm.leixing" 
              placeholder="类型" clearable  :readonly="ro.leixing"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="类型" prop="leixing">
              <el-input v-model="ruleForm.leixing" 
                placeholder="类型" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="种类" prop="zhonglei">
          <el-input v-model="ruleForm.zhonglei" 
              placeholder="种类" clearable  :readonly="ro.zhonglei"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="种类" prop="zhonglei">
              <el-input v-model="ruleForm.zhonglei" 
                placeholder="种类" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="租价" prop="zujia">
          <el-input v-model="ruleForm.zujia" 
              placeholder="租价" clearable  :readonly="ro.zujia"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="租价" prop="zujia">
              <el-input v-model="ruleForm.zujia" 
                placeholder="租价" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="库存" prop="kucun">
          <el-input v-model="ruleForm.kucun" 
              placeholder="库存" clearable  :readonly="ro.kucun"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="库存" prop="kucun">
              <el-input v-model="ruleForm.kucun" 
                placeholder="库存" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="成色" prop="chengse">
          <el-input v-model="ruleForm.chengse" 
              placeholder="成色" clearable  :readonly="ro.chengse"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="成色" prop="chengse">
              <el-input v-model="ruleForm.chengse" 
                placeholder="成色" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="账号" prop="zhanghao">
          <el-input v-model="ruleForm.zhanghao" 
              placeholder="账号" clearable  :readonly="ro.zhanghao"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="账号" prop="zhanghao">
              <el-input v-model="ruleForm.zhanghao" 
                placeholder="账号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming" 
              placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="姓名" prop="xingming">
              <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="数量" prop="shuliang">
          <el-input v-model="ruleForm.shuliang" 
              placeholder="数量" clearable  :readonly="ro.shuliang"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="数量" prop="shuliang">
              <el-input v-model="ruleForm.shuliang" 
                placeholder="数量" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="天数" prop="tianshu">
          <el-input v-model="ruleForm.tianshu" 
              placeholder="天数" clearable  :readonly="ro.tianshu"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="天数" prop="tianshu">
              <el-input v-model="ruleForm.tianshu" 
                placeholder="天数" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="金额" prop="jine">
            <el-input v-model="jine"
                placeholder="金额" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" v-if="ruleForm.jine" label="金额" prop="jine">
              <el-input v-model="ruleForm.jine" 
                placeholder="金额" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                    <el-col :span="12">
        <el-form-item class="date" v-if="type!='info'" label="日期" prop="riqi">
            <el-date-picker
                value-format="yyyy-MM-dd HH:mm:ss"
                v-model="ruleForm.riqi" 
                type="datetime"
                placeholder="日期">
            </el-date-picker>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" v-if="ruleForm.riqi" label="日期" prop="riqi">
              <el-input v-model="ruleForm.riqi" 
                placeholder="日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                                                                                                        </el-row>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              <el-form-item class="btn">
                <el-button v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validateMobile = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的手机号码"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isPhone(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
	  addEditForm: {"dateBorderStyle":"solid","selectFontSize":"15px","inputBorderRadius":"15px","inputFontSize":"15px","btnSaveFontSize":"15px","dateFontSize":"15px","textareaBorderRadius":"15px","inputBorderWidth":"1px","uploadIconFontSize":"15px","selectHeight":"46px","uploadHeight":"45px","textareaBorderStyle":"solid","btnCancelWidth":"60px","textareaLableFontSize":"15px","textareaHeight":"45px","btnSaveBorderRadius":"15px","textareaBorderWidth":"1px","btnCancelFontSize":"15px","dateIconFontSize":"15px","inputBorderStyle":"solid","btnSaveBgColor":"rgba(255, 140, 0, 1)","btnCancelBorderRadius":"15px","btnCancelBgColor":"rgba(255, 69, 0, 1)","inputLableFontSize":"15px","btnSaveBorderStyle":"solid","dateBorderWidth":"1px","dateLableFontSize":"15px","uploadBorderRadius":"15px","btnSaveHeight":"45px","dateBorderRadius":"15px","btnSaveWidth":"60px","btnCancelBorderStyle":"solid","selectIconFontSize":"15px","dateHeight":"45px","selectLableFontSize":"15px","selectBorderStyle":"solid","selectBorderWidth":"1px","btnCancelBorderWidth":"0px","uploadBorderWidth":"1px","btnCancelHeight":"45px","inputHeight":"46px","textareaFontSize":"15px","btnCancelFontColor":"rgba(255, 255, 255, 1)","selectBorderRadius":"15px","btnSaveBorderWidth":"0px","uploadBorderStyle":"solid"},
      id: '',
      type: '',
      ro:{
	maijiahao : false,
	maijiaming : false,
	shangpin : false,
	leixing : false,
	zhonglei : false,
	zujia : false,
	kucun : false,
	chengse : false,
	zhanghao : false,
	xingming : false,
	shuliang : false,
	tianshu : false,
	jine : false,
	riqi : false,
	sfsh : false,
	shhf : false,
	ispay : false,
      },
            ruleForm: {
                	        maijiahao: '',
	                        	        maijiaming: '',
	                        	        shangpin: '',
	                        	        leixing: '',
	                        	        zhonglei: '',
	                        	        zujia: '',
	                        	        kucun: '',
	                        	        chengse: '',
	                        	        zhanghao: '',
	                        	        xingming: '',
	                        	        shuliang: '',
	                        	        tianshu: '',
	                        	        jine: '',
	                        	        riqi: '',
	                        	                        	        shhf: '',
	                        	                      },
                                                                                                                                                                                                                                                          rules: {
                  maijiahao: [
                                    	                                                              ],
                  maijiaming: [
                                    	                                                              ],
                  shangpin: [
                                    	                                                              ],
                  leixing: [
                                    	                                                              ],
                  zhonglei: [
                                    	                                                              ],
                  zujia: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                        	                                                              ],
                  kucun: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                        	                                                              ],
                  chengse: [
                                    	                                                              ],
                  zhanghao: [
                                    	                                                              ],
                  xingming: [
                                    	                                                              ],
                  shuliang: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                        	                                                              ],
                  tianshu: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                        	                                                              ],
                  jine: [
                                    	                                                              ],
                  riqi: [
                                    	                                                              ],
                  sfsh: [
                                    	                                                              ],
                  shhf: [
                                    	                                                              ],
                  ispay: [
                                    	                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                                                                                            jine:{
                                                                                                                                                                                                                                                                                  get: function () {
        return 1*this.ruleForm.zujia*this.ruleForm.shuliang*this.ruleForm.tianshu
      }
    },
                                                              },
  created() {
	this.addEditStyleChange()
	this.addEditUploadStyleChange()
  },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
          	            if(o=='maijiahao'){
            this.ruleForm.maijiahao = obj[o];
	    this.ro.maijiahao = true;
            continue;
          }
	            	            if(o=='maijiaming'){
            this.ruleForm.maijiaming = obj[o];
	    this.ro.maijiaming = true;
            continue;
          }
	            	            if(o=='shangpin'){
            this.ruleForm.shangpin = obj[o];
	    this.ro.shangpin = true;
            continue;
          }
	            	            if(o=='leixing'){
            this.ruleForm.leixing = obj[o];
	    this.ro.leixing = true;
            continue;
          }
	            	            if(o=='zhonglei'){
            this.ruleForm.zhonglei = obj[o];
	    this.ro.zhonglei = true;
            continue;
          }
	            	            if(o=='zujia'){
            this.ruleForm.zujia = obj[o];
	    this.ro.zujia = true;
            continue;
          }
	            	            if(o=='kucun'){
            this.ruleForm.kucun = obj[o];
	    this.ro.kucun = true;
            continue;
          }
	            	            if(o=='chengse'){
            this.ruleForm.chengse = obj[o];
	    this.ro.chengse = true;
            continue;
          }
	            	            if(o=='zhanghao'){
            this.ruleForm.zhanghao = obj[o];
	    this.ro.zhanghao = true;
            continue;
          }
	            	            if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
	    this.ro.xingming = true;
            continue;
          }
	            	            if(o=='shuliang'){
            this.ruleForm.shuliang = obj[o];
	    this.ro.shuliang = true;
            continue;
          }
	            	            if(o=='tianshu'){
            this.ruleForm.tianshu = obj[o];
	    this.ro.tianshu = true;
            continue;
          }
	            	            if(o=='jine'){
            this.ruleForm.jine = obj[o];
	    this.ro.jine = true;
            continue;
          }
	            	            if(o=='riqi'){
            this.ruleForm.riqi = obj[o];
	    this.ro.riqi = true;
            continue;
          }
	            	            	            	                    }
                                                                                                                                                                                                                                                                                              }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                                                                                                      		if(json.zhanghao!=''&&json.zhanghao){
              		this.ruleForm.zhanghao = json.zhanghao
		}
                                  		if(json.xingming!=''&&json.xingming){
              		this.ruleForm.xingming = json.xingming
		}
                                                                                                                                                                                        } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                                                                                                                                                                                                },
                                                                                                                                                // 多级联动参数
                                                                                                                                                                                      info(id) {
      this.$http({
        url: `shangpinzujie/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // 大
                                    // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // 小
                                    // ${column.compare}
                              // ${column.compare}
              this.ruleForm.jine = this.jine
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                      if(this.ruleForm.shuliang>this.ruleForm.kucun){
        this.$message.error("数量不能超过库存");
        return
      }
                                                                                                                                                                                                            this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `shangpinzujie/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.shangpinzujieCrossAddOrUpdateFlag = false;
                  this.parent.search();
                  this.parent.contentStyleChange();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.shangpinzujieCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
                                                                                                                                                                                                                	addEditStyleChange() {
	  this.$nextTick(()=>{
	    // input
	    document.querySelectorAll('.addEdit-block .input .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputFontColor
	      el.style.fontSize = this.addEditForm.inputFontSize
	      el.style.borderWidth = this.addEditForm.inputBorderWidth
	      el.style.borderStyle = this.addEditForm.inputBorderStyle
	      el.style.borderColor = this.addEditForm.inputBorderColor
	      el.style.borderRadius = this.addEditForm.inputBorderRadius
	      el.style.backgroundColor = this.addEditForm.inputBgColor
	    })
	    document.querySelectorAll('.addEdit-block .input .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputLableColor
	      el.style.fontSize = this.addEditForm.inputLableFontSize
	    })
	    // select
	    document.querySelectorAll('.addEdit-block .select .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectFontColor
	      el.style.fontSize = this.addEditForm.selectFontSize
	      el.style.borderWidth = this.addEditForm.selectBorderWidth
	      el.style.borderStyle = this.addEditForm.selectBorderStyle
	      el.style.borderColor = this.addEditForm.selectBorderColor
	      el.style.borderRadius = this.addEditForm.selectBorderRadius
	      el.style.backgroundColor = this.addEditForm.selectBgColor
	    })
	    document.querySelectorAll('.addEdit-block .select .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectLableColor
	      el.style.fontSize = this.addEditForm.selectLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .select .el-select__caret').forEach(el=>{
	      el.style.color = this.addEditForm.selectIconFontColor
	      el.style.fontSize = this.addEditForm.selectIconFontSize
	    })
	    // date
	    document.querySelectorAll('.addEdit-block .date .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateFontColor
	      el.style.fontSize = this.addEditForm.dateFontSize
	      el.style.borderWidth = this.addEditForm.dateBorderWidth
	      el.style.borderStyle = this.addEditForm.dateBorderStyle
	      el.style.borderColor = this.addEditForm.dateBorderColor
	      el.style.borderRadius = this.addEditForm.dateBorderRadius
	      el.style.backgroundColor = this.addEditForm.dateBgColor
	    })
	    document.querySelectorAll('.addEdit-block .date .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateLableColor
	      el.style.fontSize = this.addEditForm.dateLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .date .el-input__icon').forEach(el=>{
	      el.style.color = this.addEditForm.dateIconFontColor
	      el.style.fontSize = this.addEditForm.dateIconFontSize
	      el.style.lineHeight = this.addEditForm.dateHeight
	    })
	    // upload
	    let iconLineHeight = parseInt(this.addEditForm.uploadHeight) - parseInt(this.addEditForm.uploadBorderWidth) * 2 + 'px'
	    document.querySelectorAll('.addEdit-block .upload .el-upload--picture-card').forEach(el=>{
	      el.style.width = this.addEditForm.uploadHeight
	      el.style.height = this.addEditForm.uploadHeight
	      el.style.borderWidth = this.addEditForm.uploadBorderWidth
	      el.style.borderStyle = this.addEditForm.uploadBorderStyle
	      el.style.borderColor = this.addEditForm.uploadBorderColor
	      el.style.borderRadius = this.addEditForm.uploadBorderRadius
	      el.style.backgroundColor = this.addEditForm.uploadBgColor
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.uploadHeight
	      el.style.color = this.addEditForm.uploadLableColor
	      el.style.fontSize = this.addEditForm.uploadLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-icon-plus').forEach(el=>{
	      el.style.color = this.addEditForm.uploadIconFontColor
	      el.style.fontSize = this.addEditForm.uploadIconFontSize
	      el.style.lineHeight = iconLineHeight
	      el.style.display = 'block'
	    })
	    // 多文本输入框
	    document.querySelectorAll('.addEdit-block .textarea .el-textarea__inner').forEach(el=>{
	      el.style.height = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaFontColor
	      el.style.fontSize = this.addEditForm.textareaFontSize
	      el.style.borderWidth = this.addEditForm.textareaBorderWidth
	      el.style.borderStyle = this.addEditForm.textareaBorderStyle
	      el.style.borderColor = this.addEditForm.textareaBorderColor
	      el.style.borderRadius = this.addEditForm.textareaBorderRadius
	      el.style.backgroundColor = this.addEditForm.textareaBgColor
	    })
	    document.querySelectorAll('.addEdit-block .textarea .el-form-item__label').forEach(el=>{
	      // el.style.lineHeight = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaLableColor
	      el.style.fontSize = this.addEditForm.textareaLableFontSize
	    })
	    // 保存
	    document.querySelectorAll('.addEdit-block .btn .btn-success').forEach(el=>{
	      el.style.width = this.addEditForm.btnSaveWidth
	      el.style.height = this.addEditForm.btnSaveHeight
	      el.style.color = this.addEditForm.btnSaveFontColor
	      el.style.fontSize = this.addEditForm.btnSaveFontSize
	      el.style.borderWidth = this.addEditForm.btnSaveBorderWidth
	      el.style.borderStyle = this.addEditForm.btnSaveBorderStyle
	      el.style.borderColor = this.addEditForm.btnSaveBorderColor
	      el.style.borderRadius = this.addEditForm.btnSaveBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnSaveBgColor
	    })
	    // 返回
	    document.querySelectorAll('.addEdit-block .btn .btn-close').forEach(el=>{
	      el.style.width = this.addEditForm.btnCancelWidth
	      el.style.height = this.addEditForm.btnCancelHeight
	      el.style.color = this.addEditForm.btnCancelFontColor
	      el.style.fontSize = this.addEditForm.btnCancelFontSize
	      el.style.borderWidth = this.addEditForm.btnCancelBorderWidth
	      el.style.borderStyle = this.addEditForm.btnCancelBorderStyle
	      el.style.borderColor = this.addEditForm.btnCancelBorderColor
	      el.style.borderRadius = this.addEditForm.btnCancelBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnCancelBgColor
	    })
	  })
	},
	addEditUploadStyleChange() {
		this.$nextTick(()=>{
		  document.querySelectorAll('.addEdit-block .upload .el-upload-list--picture-card .el-upload-list__item').forEach(el=>{
			el.style.width = this.addEditForm.uploadHeight
			el.style.height = this.addEditForm.uploadHeight
			el.style.borderWidth = this.addEditForm.uploadBorderWidth
			el.style.borderStyle = this.addEditForm.uploadBorderStyle
			el.style.borderColor = this.addEditForm.uploadBorderColor
			el.style.borderRadius = this.addEditForm.uploadBorderRadius
			el.style.backgroundColor = this.addEditForm.uploadBgColor
		  })
	  })
	},
  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
  
  & /deep/ .ql-container {
	  height: 310px;
  }
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
.addEdit-block {
	margin: -10px;
}
.detail-form-content {
	padding: 12px;
}
.btn .el-button {
  padding: 0;
}
</style>
