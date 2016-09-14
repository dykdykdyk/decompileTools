.class public interface abstract Lcom/umeng/message/proguard/bd;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final a:Lcom/umeng/message/proguard/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/umeng/message/proguard/be;

    invoke-direct {v0}, Lcom/umeng/message/proguard/be;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/bd;->a:Lcom/umeng/message/proguard/bd;

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
