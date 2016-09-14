.class public interface abstract Lcom/nut/blehunter/rxApi/service/UploadFileService;
.super Ljava/lang/Object;
.source "UploadFileService.java"


# virtual methods
.method public abstract uploadFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/al;)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "tagId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "fileType"
        .end annotation
    .end param
    .param p3    # Lokhttp3/al;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/al;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/file/secure/upload"
    .end annotation
.end method
