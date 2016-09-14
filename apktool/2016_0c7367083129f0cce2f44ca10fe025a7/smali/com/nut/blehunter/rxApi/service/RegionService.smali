.class public interface abstract Lcom/nut/blehunter/rxApi/service/RegionService;
.super Ljava/lang/Object;
.source "RegionService.java"


# virtual methods
.method public abstract addSafeRegion(Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v1/user/safeRegion"
    .end annotation
.end method

.method public abstract deleteSafeRegion(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uuid"
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

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/v1/user/safeRegion/{uuid}"
    .end annotation
.end method

.method public abstract getSafeRegion()Lrx/h;
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
        value = "/api/v1/user/safeRegion"
    .end annotation
.end method

.method public abstract modifySafeRegion(Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/v1/user/safeRegion"
    .end annotation
.end method
