.class public Lcom/umeng/message/proguard/k$e;
.super Ljava/lang/RuntimeException;
.source "HttpRequest.java"


# direct methods
.method protected constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 621
    return-void
.end method


# virtual methods
.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 612
    .line 1630
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 612
    return-object v0
.end method
