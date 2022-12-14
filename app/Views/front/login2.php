<div class="d-flex flex-column flex-root">
  <!--begin::Login-->
  <div class="login login-6 login-signin-on login-signin-on d-flex flex-column-fluid" id="kt_login">
    <div class="d-flex flex-column flex-lg-row flex-row-fluid text-center" style="background-image: url(<?= BASE  ?>/front_assets/assets/media/bg/bg-3.jpg);">
      <!--begin:Aside-->
      <div class="d-flex w-100 flex-center p-15">
        <div class="login-wrapper">
          <!--begin:Aside Content-->
          <div class="text-dark-75">
            <a href="#">
              <img src="<?= BASE  ?>/front_assets/custom/apps/ecommerce/img/logo2.png" class="max-h-150px" alt="" />
            </a>
            <h3 class="mb-8 mt-22 font-weight-bold">HANINDYA GALLERY</h3>
            <p class="mb-15 text-muted font-weight-bold">Selamat Datang Di Website Kami.</p>
            <button type="button" id="kt_login_signup" class="btn btn-outline-primary btn-pill py-4 px-9 font-weight-bold">Get An Account</button>
          </div>
          <!--end:Aside Content-->
        </div>
      </div>
      <!--end:Aside-->
      <!--begin:Divider-->
      <div class="login-divider">
        <div></div>
      </div>
      <!--end:Divider-->
      <!--begin:Content-->
      <div class="d-flex w-100 flex-center p-15 position-relative overflow-hidden">
        <div class="login-wrapper">
          <!--begin:Sign In Form-->
          <div class="login-signin">
            <div class="text-center mb-10 mb-lg-20">
              <h2 class="font-weight-bold">Sign In</h2>
              <p class="text-muted font-weight-bold">Enter your username and password</p>

            </div>
            <?php if (!empty($errors)) : ?>
              <div class="alert alert-danger">
                <?php foreach ($errors as $field => $error) : ?>
                  <p><?= $error ?></p>
                <?php endforeach ?>
              </div>
            <?php endif ?>
            <form class="form text-left" id="kt_login_signin_form2" action="<?= BASE ?>/front/login" method="post">
              <div class="form-group py-2 m-0">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="text" placeholder="Username" name="username" autocomplete="off" />
              </div>
              <div class="form-group py-2 border-top m-0">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="Password" placeholder="Password" name="password" />
              </div>
              <div class="form-group d-flex flex-wrap justify-content-between align-items-center mt-5">
                <div class="checkbox-inline">
                  <label class="checkbox m-0 text-muted font-weight-bold">
                    <input type="checkbox" name="remember" />
                    <span></span>Remember me</label>
                </div>
                <a href="javascript:;" id="kt_login_forgot" class="text-muted text-hover-primary font-weight-bold">Forget Password ?</a>
              </div>
              <div class="text-center mt-15">
                <!-- <button id="kt_login_signin_submit" class="btn btn-primary btn-pill shadow-sm py-4 px-9 font-weight-bold">Sign In</button> -->
                <button type="submit" class="btn btn-primary btn-pill shadow-sm py-4 px-9 font-weight-bold">Sign In</button>
              </div>
            </form>
          </div>
          <!--end:Sign In Form-->
          <!--begin:Sign Up Form-->
          <div class="login-signup">
            <div class="text-center mb-10 mb-lg-20">
              <h3 class="">Sign Up</h3>
              <p class="text-muted font-weight-bold">Enter your details to create your account</p>

            </div>
            <?php if (!empty($errors)) : ?>
              <div class="alert alert-danger">
                <?php foreach ($errors as $field => $error) : ?>
                  <p><?= $error ?></p>
                <?php endforeach ?>
              </div>
            <?php endif ?>
            <form class="form text-left" id="kt_login_signup_form" action="<?= BASE ?>/front/signup" method="post">
              <div class="form-group py-2 m-0">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="text" placeholder="Fullname" name="fullname" />
              </div>
              <div class="form-group py-2 m-0 border-top">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="text" placeholder="Email" name="" autocomplete="off" />
              </div>
              <div class="form-group py-2 m-0 border-top">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="password" placeholder="Password" name="" />
              </div>
              <div class="form-group py-2 m-0 border-top">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="password" placeholder="Confirm Password" name="cpassword" />
              </div>
              <div class="form-group mt-5">
                <div class="checkbox-inline">
                  <label class="checkbox checkbox-outline font-weight-bold">
                    <input type="checkbox" name="agree" />
                    <span></span>I Agree the
                    <a href="#" class="ml-1">terms and conditions</a>.</label>
                </div>
              </div>
              <div class="form-group d-flex flex-wrap flex-center">
                <!-- <button id="kt_login_signup_submit" class="btn btn-primary btn-pill font-weight-bold px-9 py-4 my-3 mx-2">Submit</button> -->
                <button type="submit" class="btn btn-primary btn-pill font-weight-bold px-9 py-4 my-3 mx-2">Submit</button>
                <button id="kt_login_signup_cancel" class="btn btn-outline-primary btn-pill font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
              </div>
            </form>
          </div>
          <!--end:Sign Up Form-->
          <!--begin:Forgot Password Form-->
          <div class="login-forgot">
            <div class="text-center mb-10 mb-lg-20">
              <h3 class="">Forgotten Password ?</h3>
              <p class="text-muted font-weight-bold">Enter your email to reset your password</p>
            </div>
            <form class="form text-left" id="kt_login_forgot_form">
              <div class="form-group py-2 m-0 border-bottom">
                <input class="form-control h-auto border-0 px-0 placeholder-dark-75" type="text" placeholder="Email" name="email" autocomplete="off" />
              </div>
              <div class="form-group d-flex flex-wrap flex-center mt-10">
                <button id="kt_login_forgot_submit" class="btn btn-primary btn-pill font-weight-bold px-9 py-4 my-3 mx-2">Submit</button>
                <button id="kt_login_forgot_cancel" class="btn btn-outline-primary btn-pill font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
              </div>
            </form>
          </div>
          <!--end:Forgot Password Form-->
        </div>
      </div>
      <!--end:Content-->
    </div>
  </div>
  <!--end::Login-->
</div>