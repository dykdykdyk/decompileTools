.class public interface abstract Lcom/nut/blehunter/rxApi/service/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# virtual methods
.method public abstract acceptSharedNut(Ljava/util/HashMap;)Lrx/h;
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
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/share/secure/accept"
    .end annotation
.end method

.method public abstract bindEmail(Ljava/util/HashMap;)Lretrofit2/Call;
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
        value = "api/v1/user/email"
    .end annotation
.end method

.method public abstract bindMobile(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/user/secure/{type}"
    .end annotation
.end method

.method public abstract bindThirdAccount(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v3/user/secure/{type}"
    .end annotation
.end method

.method public abstract deleteShared(Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/share/secure/delete"
    .end annotation
.end method

.method public abstract getBanners(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/v1/materials"
    .end annotation
.end method

.method public abstract getDevices(Ljava/util/HashMap;)Lrx/h;
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
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/device/secure/list"
    .end annotation
.end method

.method public abstract getSharedNut(Ljava/util/HashMap;)Lrx/h;
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
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/nut/secure/getByShareRecord"
    .end annotation
.end method

.method public abstract getSharedUsers(Ljava/util/HashMap;)Lretrofit2/Call;
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

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/share/secure/list"
    .end annotation
.end method

.method public abstract logout()Lretrofit2/Call;
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
        value = "api/v1/user/logout"
    .end annotation
.end method

.method public abstract modifyProfile(Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/ios/secure/profile/modify"
    .end annotation
.end method

.method public abstract modifyUser(Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;)Lrx/h;
    .param p1    # Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/v1/user"
    .end annotation
.end method
