<#include "/base.ftl">
    <#include "/macros/navbar.ftl">

        <!-- PAGE HEADER GOES HERE -->
        <#macro page_head>
            <title> User Registration </title>
        </#macro>


        <!--  BODY CODE HOES HERE -->
        <#macro page_body>


            <@navbar/>
            <div class="container">
                <div class="row">
                    <form class="form-horizontal" action="/admin/createuser" method = "post">
                        <fieldset>

                            <!-- Form Name -->
                            <legend>User Registration Form</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="lastname">Last Name</label>
                                <div class="col-md-5">
                                    <input id="lastname" name="lastname" type="text" placeholder="Your last name"
                                           class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="firstname">First Name</label>
                                <div class="col-md-5">
                                    <input id="firstname" name="firstname" type="text" placeholder="Your first name"
                                           class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="vat">VAT</label>
                                <div class="col-md-5">
                                    <input id="vat" name="vat" type="text" placeholder="Your VAT number"
                                           class="form-control input-md" required="">
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="email">Email</label>
                                <div class="col-md-5">
                                    <input id="email" name="email" type="text" placeholder="Your email here"
                                           class="form-control input-md" required="">
                                    <span class="help-block">xxxxxxxxx@xxxxx.xxx</span>
                                </div>
                            </div>

                             <!-- Text input-->
                                <div class="form-group">
                                   <label class="col-md-4 control-label" for="address">Address</label>
                                   <div class="col-md-5">
                                      <input id="address" name="address" type="text"
                                            placeholder="Your address goes here" class="form-control input-md"
                                            required="">
                                   </div>
                                </div>


                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="password">Password </label>
                                <div class="col-md-5">
                                    <input id="password" name="password" type="password" placeholder="Password"
                                           class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="confirmpassword">Confirm Password</label>
                                <div class="col-md-5">
                                    <input id="confirmpassword" name="confirmpassword" type="password"
                                           placeholder="Confirmation password" class="form-control input-md"
                                           required="">
                                    <span class="help-block">Type again your password</span>
                                </div>
                            </div>

                             <div class="form-group">
                                   <label class="col-md-4 control-label" for="type">Select user type</label>
                                   <div class="col-md-5">
                                      <select class="form-control" id="type" name="type">
                                         <option>Admin</option>
                                         <option>Owner</option>
                                      </select>
                                   </div>
                             </div>

                            <!-- Button -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="createuser"></label>
                                <div class="col-md-4">
                                    <input type="submit" id="createuser" value="Create User"
                                                  name="createuser" class="btn btn-primary">
                                </div>
                            </div>

                        </fieldset>
                    </form>

                </div>
                <br>
                <#if binding_result??>
                <p style="text-align:center; font-size:larger; color:lightSlateGrey;">
                   Form errors on previous try :
                </p>
                <#list errorsList as error>
                <div class="row">
                   <br>
                   <p style="color:red;font-weight:bold;text-align:center;">
                      error : ${error.getDefaultMessage()!error.toString()}
                   </p>
                </div>
                </#list>
                </#if>
                <br>
                <#if errorMessage??>
                   <p style="text-align:center; font-size:larger; color:lightSlateGrey;">
                      Exceptions that occured on previous submission try :
                   </p>
                   <div class="row">
                   <br>
                      <p style="color:red;font-weight:bold;text-align:center;">
                         error : ${errorMessage}
                         <#if registrationResult??>
                            <br>
                            registration result : ${registrationResult}
                         </#if>
                      </p>
                   </div>
                </#if>
            </div>


        </#macro>

        <@display_page/>