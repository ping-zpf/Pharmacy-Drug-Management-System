<template>
  <div id="userLayout">
    <div class="user-layout-header">
      <img class="logo" :src="logoImage" alt="">
      <span>药店药品管理系统</span>
    </div>
    <div class="main-container">
      <div class="main">
        <div class="main_left">
          <img class="left-img" :src="leftImage" alt="">
          <div class="left-text">
            <h1>欢迎使用药店药品管理系统</h1>
            <p>高效管理药店药品信息，提升工作效率。</p>
          </div>
        </div>
        <div class="main_right">
          <h2 class="sys_title">用户登录</h2>
          <a-form
            ref="myform"
            layout="vertical"
            :model="data.loginForm"
            :rules="data.rules"
            :hideRequiredMark="true"
          >
            <a-form-item name="username" label="用户名" :colon="false">
              <a-input
                size="large"
                placeholder="请输入用户名"
                v-model:value="data.loginForm.username"
                @pressEnter="handleSubmit"
              />
            </a-form-item>
            <a-form-item name="password" label="密码" :colon="false">
              <a-input
                size="large"
                type="password"
                placeholder="请输入密码"
                v-model:value="data.loginForm.password"
                @pressEnter="handleSubmit"
              />
            </a-form-item>
            <a-form-item style="padding-top: 24px">
              <a-checkbox v-model="checked">记住密码</a-checkbox>
              <a-button
                class="login-button"
                type="primary"
                :loading="loginBtn"
                size="large"
                block
                @click="handleSubmit"
              >
                登录
              </a-button>
            </a-form-item>
            <div class="forgot-password">
              <a href="#" @click.prevent="forgotPassword">忘记密码？</a>
            </div>
          </a-form>
          <div class="error-tip"></div>
        </div>
      </div>
    </div>
    <footer class="footer">
      <div class="copyright">
        <span>&copy; 2024 药店药品管理系统. All rights reserved.</span>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
import { useUserStore } from '/@/store';
import logoImage from '/@/assets/images/k-logo.png';
import leftImage from '/@/assets/images/left-image.png'; // 假设的左侧图片路径
import { useRouter } from 'vue-router';
import { message } from 'ant-design-vue';
import { ref, reactive } from 'vue';

const router = useRouter();
const userStore = useUserStore();

const myform = ref();
const loginBtn = ref<boolean>(false);
const checked = ref<boolean>(false);
const data = reactive({
  loginForm: {
    username: '',
    password: ''
  },
  rules: {
    username: [
      { required: true, message: '请输入用户名', trigger: 'blur' }
    ],
    password: [
      { required: true, message: '请输入密码', trigger: 'blur' }
    ]
  }
});

const handleSubmit = () => {
  myform.value?.validate().then(() => {
    handleLogin();
  }).catch(() => {
    message.warn('不能为空');
  });
};

const handleLogin = () => {
  userStore.adminLogin({
    username: data.loginForm.username,
    password: data.loginForm.password
  }).then(res => {
    loginSuccess();
  }).catch(err => {
    message.warn(err.msg || '登录失败');
  });
};

const loginSuccess = () => {
  router.push({ path: '/admin' });
  message.success('登录成功！');
};

const forgotPassword = () => {
  // 处理忘记密码逻辑
  message.info('请联系管理员找回密码');
};
</script>

<style lang="less" scoped>
#userLayout {
  position: relative;
  height: 100vh;
  background: linear-gradient(to bottom, #e0f7fa, #b2ebf2); /* 添加背景渐变色 */
}

.user-layout-header {
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #0097a7; /* 修改标题栏颜色 */
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
  color: white; /* 修改标题栏文字颜色 */
  font-size: 24px;
  font-weight: bold;

 .logo {
    width: 40px;
    height: 40px;
    margin-right: 16px;
  }
}

.main-container {
  width: 100%;
  height: calc(100vh - 60px - 40px);
  display: flex;
  justify-content: center;
  align-items: center;
}

.main {
  display: flex;
  width: 80%;
  max-width: 1200px;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.main_left {
  width: 60%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: #e6f0f7;
  padding: 40px;

 .left-img {
    width: 80%;
    max-width: 400px;
    margin-bottom: 20px;
  }

 .left-text {
    text-align: center;
    color: #333;

    h1 {
      font-size: 32px;
      margin-bottom: 10px;
    }

    p {
      font-size: 18px;
      line-height: 1.5;
    }
  }
}

.main_right {
  width: 40%;
  padding: 40px;

 .sys_title {
    font-size: 28px;
    color: #007bff;
    font-weight: bold;
    text-align: center;
    margin-bottom: 30px;
  }

  :deep(.ant-form-item label) {
    font-weight: bold;
    color: #333;
  }

  :deep(.ant-input) {
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 12px;
    margin-bottom: 20px;
  }

 .login-button {
    background-color: #007bff;
    border: none;
    color: white;
    border-radius: 4px;
    padding: 12px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;

    &:hover {
      background-color: #0056b3;
    }
  }

 .forgot-password {
    text-align: right;
    margin-top: 10px;
    color: #007bff;
    cursor: pointer;
    text-decoration: underline;
  }

 .error-tip {
    text-align: center;
    color: red;
    margin-top: 10px;
  }
}

.footer {
  height: 40px;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #f4f7f9;
  color: #666;
  font-size: 14px;
}
</style>    