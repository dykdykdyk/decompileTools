.class final Lcom/sina/weibo/sdk/c/a;
.super Lcom/sina/weibo/sdk/c/f;
.source "EventLog.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/c/f;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/sina/weibo/sdk/c/a;->a:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/sina/weibo/sdk/c/a;->b:Ljava/util/Map;

    .line 20
    return-void
.end method
