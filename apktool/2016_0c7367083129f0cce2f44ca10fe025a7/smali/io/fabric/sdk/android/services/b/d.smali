.class final Lio/fabric/sdk/android/services/b/d;
.super Lio/fabric/sdk/android/services/b/k;
.source "AdvertisingInfoProvider.java"


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/b/b;

.field final synthetic b:Lio/fabric/sdk/android/services/b/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/b/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/d;->a:Lio/fabric/sdk/android/services/b/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    .line 1028
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/c;->a()Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/d;->a:Lio/fabric/sdk/android/services/b/b;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/b/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Asychronously getting Advertising Info and storing it to preferences"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    .line 2028
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/b/c;->a(Lio/fabric/sdk/android/services/b/b;)V

    .line 76
    :cond_0
    return-void
.end method
