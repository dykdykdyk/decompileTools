.class public interface abstract Lio/fabric/sdk/android/services/network/h;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final a:Lio/fabric/sdk/android/services/network/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lio/fabric/sdk/android/services/network/i;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/i;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/network/h;->a:Lio/fabric/sdk/android/services/network/h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
