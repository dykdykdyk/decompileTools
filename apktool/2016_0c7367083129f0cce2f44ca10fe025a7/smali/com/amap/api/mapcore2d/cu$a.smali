.class Lcom/amap/api/mapcore2d/cu$a;
.super Lcom/amap/api/mapcore2d/eg;
.source "SDKCoordinatorDownload.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eg;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cu$a;->a:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cu$a;->a:Ljava/lang/String;

    return-object v0
.end method
