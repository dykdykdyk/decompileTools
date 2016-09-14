.class public interface abstract Lcom/nut/blehunter/rxApi/service/AuthLoginService;
.super Ljava/lang/Object;
.source "AuthLoginService.java"


# virtual methods
.method public abstract getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/captcha/{type}"
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/user/profile"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/LoginRequestBody;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/user/login/{type}"
    .end annotation
.end method

.method public abstract modifyPasswordByEmail(Ljava/util/HashMap;)Lretrofit2/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/v1/user/password/email"
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/user/register/{type}"
    .end annotation
.end method

.method public abstract resetPassword(Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/user/resetPassword"
    .end annotation
.end method

.method public abstract validCaptcha(Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/captcha/validCaptcha"
    .end annotation
.end method

.method public abstract version()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/android/version"
    .end annotation
.end method
