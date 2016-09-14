.class public interface abstract Lcom/nut/blehunter/rxApi/service/NutService;
.super Ljava/lang/Object;
.source "NutService.java"


# virtual methods
.method public abstract authNut(Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/nut/auth"
    .end annotation
.end method

.method public abstract bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "v"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p3    # Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/{v}/nut/secure/{type}"
    .end annotation
.end method

.method public abstract checkFirmwareVersion(Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/firmwareRecords/secure/last"
    .end annotation
.end method

.method public abstract declareLosing(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/losingRecord/secure/{type}"
    .end annotation
.end method

.method public abstract deleteNut(Ljava/util/HashMap;)Lretrofit2/Call;
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
        value = "api/v1/nut/secure/delete"
    .end annotation
.end method

.method public abstract findNut(Lcom/nut/blehunter/rxApi/model/FindRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/FindRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/FindRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/nut/secure/find"
    .end annotation
.end method

.method public abstract getFoundPositionRecords(Ljava/util/HashMap;)Lrx/h;
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
        value = "api/v2/nut/secure/positionRecord"
    .end annotation
.end method

.method public abstract getNuts()Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/nut/secure/list"
    .end annotation
.end method
