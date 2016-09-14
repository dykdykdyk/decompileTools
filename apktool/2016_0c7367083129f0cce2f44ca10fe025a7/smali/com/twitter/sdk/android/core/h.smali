.class final Lcom/twitter/sdk/android/core/h;
.super Lretrofit/client/OkClient;
.source "DefaultClient.java"


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/g;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/g;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/twitter/sdk/android/core/h;->a:Lcom/twitter/sdk/android/core/g;

    invoke-direct {p0}, Lretrofit/client/OkClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected final openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->a:Lcom/twitter/sdk/android/core/g;

    invoke-super {p0, p1}, Lretrofit/client/OkClient;->openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/g;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
